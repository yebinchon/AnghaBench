
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct file {int f_flags; int * f_op; int f_mode; } ;
typedef struct tcon_link dentry ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_pending_open {int dummy; } ;
struct cifs_fid {int dummy; } ;
struct cifsFileInfo {int dummy; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
typedef int __u32 ;
struct TYPE_7__ {int mnt_cifs_flags; } ;
struct TYPE_6__ {int (* close ) (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;int (* new_lease_key ) (struct cifs_fid*) ;} ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;


 int CIFS_MOUNT_NO_BRL ;
 int CIFS_MOUNT_STRICT_IO ;
 TYPE_3__* CIFS_SB (int ) ;
 int ENOENT ;
 int ENOMEM ;
 int FMODE_CREATED ;
 int FYI ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 unsigned int O_CREAT ;
 int O_DIRECT ;
 unsigned int O_EXCL ;
 int PTR_ERR (struct tcon_link*) ;
 int check_name (struct tcon_link*,struct cifs_tcon*) ;
 int cifs_add_pending_open (struct cifs_fid*,struct tcon_link*,struct cifs_pending_open*) ;
 int cifs_dbg (int ,char*,struct inode*,struct tcon_link*,struct tcon_link*) ;
 int cifs_del_pending_open (struct cifs_pending_open*) ;
 int cifs_do_create (struct inode*,struct tcon_link*,unsigned int,struct tcon_link*,unsigned int,int ,int *,struct cifs_fid*) ;
 int cifs_file_direct_nobrl_ops ;
 int cifs_file_direct_ops ;
 struct tcon_link* cifs_lookup (struct inode*,struct tcon_link*,int ) ;
 struct cifsFileInfo* cifs_new_fileinfo (struct cifs_fid*,struct file*,struct tcon_link*,int ) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (TYPE_3__*) ;
 int d_in_lookup (struct tcon_link*) ;
 int finish_no_open (struct file*,struct tcon_link*) ;
 int finish_open (struct file*,struct tcon_link*,int ) ;
 int fput (struct file*) ;
 int free_xid (unsigned int) ;
 int generic_file_open ;
 unsigned int get_xid () ;
 int stub1 (struct cifs_fid*) ;
 int stub2 (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;
 int stub3 (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int
cifs_atomic_open(struct inode *inode, struct dentry *direntry,
   struct file *file, unsigned oflags, umode_t mode)
{
 int rc;
 unsigned int xid;
 struct tcon_link *tlink;
 struct cifs_tcon *tcon;
 struct TCP_Server_Info *server;
 struct cifs_fid fid;
 struct cifs_pending_open open;
 __u32 oplock;
 struct cifsFileInfo *file_info;
 if (!(oflags & O_CREAT)) {
  struct dentry *res;





  if (!d_in_lookup(direntry))
   return -ENOENT;

  res = cifs_lookup(inode, direntry, 0);
  if (IS_ERR(res))
   return PTR_ERR(res);

  return finish_no_open(file, res);
 }

 xid = get_xid();

 cifs_dbg(FYI, "parent inode = 0x%p name is: %pd and dentry = 0x%p\n",
   inode, direntry, direntry);

 tlink = cifs_sb_tlink(CIFS_SB(inode->i_sb));
 if (IS_ERR(tlink)) {
  rc = PTR_ERR(tlink);
  goto out_free_xid;
 }

 tcon = tlink_tcon(tlink);

 rc = check_name(direntry, tcon);
 if (rc)
  goto out;

 server = tcon->ses->server;

 if (server->ops->new_lease_key)
  server->ops->new_lease_key(&fid);

 cifs_add_pending_open(&fid, tlink, &open);

 rc = cifs_do_create(inode, direntry, xid, tlink, oflags, mode,
       &oplock, &fid);

 if (rc) {
  cifs_del_pending_open(&open);
  goto out;
 }

 if ((oflags & (O_CREAT | O_EXCL)) == (O_CREAT | O_EXCL))
  file->f_mode |= FMODE_CREATED;

 rc = finish_open(file, direntry, generic_file_open);
 if (rc) {
  if (server->ops->close)
   server->ops->close(xid, tcon, &fid);
  cifs_del_pending_open(&open);
  goto out;
 }

 if (file->f_flags & O_DIRECT &&
     CIFS_SB(inode->i_sb)->mnt_cifs_flags & CIFS_MOUNT_STRICT_IO) {
  if (CIFS_SB(inode->i_sb)->mnt_cifs_flags & CIFS_MOUNT_NO_BRL)
   file->f_op = &cifs_file_direct_nobrl_ops;
  else
   file->f_op = &cifs_file_direct_ops;
  }

 file_info = cifs_new_fileinfo(&fid, file, tlink, oplock);
 if (file_info == ((void*)0)) {
  if (server->ops->close)
   server->ops->close(xid, tcon, &fid);
  cifs_del_pending_open(&open);
  fput(file);
  rc = -ENOMEM;
 }

out:
 cifs_put_tlink(tlink);
out_free_xid:
 free_xid(xid);
 return rc;
}
