
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct file {int f_mode; struct cifsFileInfo* private_data; int f_flags; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {int open_file_lock; int num_local_opens; int openFileList; TYPE_1__* ses; } ;
struct cifs_fid_locks {int llist; struct cifsFileInfo* cfile; int locks; } ;
struct cifs_fid {int purge_cache; TYPE_2__* pending_open; } ;
struct cifsInodeInfo {int open_file_lock; int openFileList; int lock_sem; int llist; } ;
struct cifsFileInfo {int count; int invalidHandle; int flist; int tlist; int file_info_lock; int fh_mutex; int oplock_break; int tlink; int f_flags; int dentry; int uid; int pid; struct cifs_fid_locks* llist; } ;
struct TCP_Server_Info {TYPE_3__* ops; } ;
typedef scalar_t__ __u32 ;
struct TYPE_8__ {int tgid; } ;
struct TYPE_7__ {int (* set_fid ) (struct cifsFileInfo*,struct cifs_fid*,scalar_t__) ;scalar_t__ (* is_read_op ) (scalar_t__) ;} ;
struct TYPE_6__ {scalar_t__ oplock; int olist; } ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;


 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 scalar_t__ CIFS_OPLOCK_NO_CHANGE ;
 int FMODE_READ ;
 int FYI ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 int cifs_dbg (int ,char*) ;
 int cifs_down_write (int *) ;
 int cifs_get_tlink (struct tcon_link*) ;
 scalar_t__ cifs_has_mand_locks (struct cifsInodeInfo*) ;
 int cifs_oplock_break ;
 int cifs_sb_active (int ) ;
 int cifs_zap_mapping (struct inode*) ;
 TYPE_4__* current ;
 int current_fsuid () ;
 struct inode* d_inode (struct dentry*) ;
 int dget (struct dentry*) ;
 struct dentry* file_dentry (struct file*) ;
 int kfree (struct cifsFileInfo*) ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_init (int *) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (scalar_t__) ;
 int stub2 (struct cifsFileInfo*,struct cifs_fid*,scalar_t__) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;
 int up_write (int *) ;

struct cifsFileInfo *
cifs_new_fileinfo(struct cifs_fid *fid, struct file *file,
    struct tcon_link *tlink, __u32 oplock)
{
 struct dentry *dentry = file_dentry(file);
 struct inode *inode = d_inode(dentry);
 struct cifsInodeInfo *cinode = CIFS_I(inode);
 struct cifsFileInfo *cfile;
 struct cifs_fid_locks *fdlocks;
 struct cifs_tcon *tcon = tlink_tcon(tlink);
 struct TCP_Server_Info *server = tcon->ses->server;

 cfile = kzalloc(sizeof(struct cifsFileInfo), GFP_KERNEL);
 if (cfile == ((void*)0))
  return cfile;

 fdlocks = kzalloc(sizeof(struct cifs_fid_locks), GFP_KERNEL);
 if (!fdlocks) {
  kfree(cfile);
  return ((void*)0);
 }

 INIT_LIST_HEAD(&fdlocks->locks);
 fdlocks->cfile = cfile;
 cfile->llist = fdlocks;
 cifs_down_write(&cinode->lock_sem);
 list_add(&fdlocks->llist, &cinode->llist);
 up_write(&cinode->lock_sem);

 cfile->count = 1;
 cfile->pid = current->tgid;
 cfile->uid = current_fsuid();
 cfile->dentry = dget(dentry);
 cfile->f_flags = file->f_flags;
 cfile->invalidHandle = 0;
 cfile->tlink = cifs_get_tlink(tlink);
 INIT_WORK(&cfile->oplock_break, cifs_oplock_break);
 mutex_init(&cfile->fh_mutex);
 spin_lock_init(&cfile->file_info_lock);

 cifs_sb_active(inode->i_sb);





 if (server->ops->is_read_op(oplock) && cifs_has_mand_locks(cinode)) {
  cifs_dbg(FYI, "Reset oplock val from read to None due to mand locks\n");
  oplock = 0;
 }

 spin_lock(&tcon->open_file_lock);
 if (fid->pending_open->oplock != CIFS_OPLOCK_NO_CHANGE && oplock)
  oplock = fid->pending_open->oplock;
 list_del(&fid->pending_open->olist);

 fid->purge_cache = 0;
 server->ops->set_fid(cfile, fid, oplock);

 list_add(&cfile->tlist, &tcon->openFileList);
 atomic_inc(&tcon->num_local_opens);


 spin_lock(&cinode->open_file_lock);
 if (file->f_mode & FMODE_READ)
  list_add(&cfile->flist, &cinode->openFileList);
 else
  list_add_tail(&cfile->flist, &cinode->openFileList);
 spin_unlock(&cinode->open_file_lock);
 spin_unlock(&tcon->open_file_lock);

 if (fid->purge_cache)
  cifs_zap_mapping(inode);

 file->private_data = cfile;
 return cfile;
}
