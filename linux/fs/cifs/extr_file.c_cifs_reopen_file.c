
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int i_sb; int i_mapping; } ;
struct TYPE_6__ {int Capability; } ;
struct cifs_tcon {scalar_t__ unix_ext; TYPE_1__ fsUnixInfo; TYPE_5__* ses; } ;
struct cifs_sb_info {int mnt_file_mode; } ;
struct cifs_open_parms {int reconnect; int desired_access; int create_options; int disposition; char* path; TYPE_3__* fid; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifsInodeInfo {int dummy; } ;
struct TYPE_8__ {int netfid; } ;
struct cifsFileInfo {int invalidHandle; unsigned int f_flags; TYPE_3__ fid; int fh_mutex; int dentry; int tlink; } ;
struct TCP_Server_Info {TYPE_2__* ops; scalar_t__ oplocks; } ;
typedef int __u32 ;
struct TYPE_9__ {struct TCP_Server_Info* server; } ;
struct TYPE_7__ {int (* open ) (unsigned int,struct cifs_open_parms*,int *,int *) ;int (* set_fid ) (struct cifsFileInfo*,TYPE_3__*,int ) ;scalar_t__ (* is_read_op ) (int ) ;int (* get_lease_key ) (struct inode*,TYPE_3__*) ;} ;


 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_UNIX_POSIX_PATH_OPS_CAP ;
 int CREATE_NOT_DIR ;
 int CREATE_OPEN_BACKUP_INTENT ;
 int EACCES ;
 int ENOENT ;
 int ENOMEM ;
 int FILE_OPEN ;
 int FYI ;
 unsigned int O_CREAT ;
 unsigned int O_EXCL ;
 unsigned int O_TRUNC ;
 int REQ_OPLOCK ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 char* build_path_from_dentry (int ) ;
 scalar_t__ cap_unix (TYPE_5__*) ;
 int cifs_convert_flags (unsigned int) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_get_inode_info (struct inode**,char*,int *,int ,unsigned int,int *) ;
 int cifs_get_inode_info_unix (struct inode**,char*,int ,unsigned int) ;
 scalar_t__ cifs_has_mand_locks (struct cifsInodeInfo*) ;
 int cifs_posix_open (char*,int *,int ,int ,unsigned int,int *,int *,unsigned int) ;
 int cifs_relock_file (struct cifsFileInfo*) ;
 struct inode* d_inode (int ) ;
 int filemap_write_and_wait (int ) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 int is_interrupt_error (int) ;
 int kfree (char*) ;
 int le64_to_cpu (int ) ;
 int mapping_set_error (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct inode*,TYPE_3__*) ;
 int stub2 (unsigned int,struct cifs_open_parms*,int *,int *) ;
 int stub3 (unsigned int,struct cifs_open_parms*,int *,int *) ;
 scalar_t__ stub4 (int ) ;
 int stub5 (struct cifsFileInfo*,TYPE_3__*,int ) ;
 struct cifs_tcon* tlink_tcon (int ) ;

__attribute__((used)) static int
cifs_reopen_file(struct cifsFileInfo *cfile, bool can_flush)
{
 int rc = -EACCES;
 unsigned int xid;
 __u32 oplock;
 struct cifs_sb_info *cifs_sb;
 struct cifs_tcon *tcon;
 struct TCP_Server_Info *server;
 struct cifsInodeInfo *cinode;
 struct inode *inode;
 char *full_path = ((void*)0);
 int desired_access;
 int disposition = FILE_OPEN;
 int create_options = CREATE_NOT_DIR;
 struct cifs_open_parms oparms;

 xid = get_xid();
 mutex_lock(&cfile->fh_mutex);
 if (!cfile->invalidHandle) {
  mutex_unlock(&cfile->fh_mutex);
  rc = 0;
  free_xid(xid);
  return rc;
 }

 inode = d_inode(cfile->dentry);
 cifs_sb = CIFS_SB(inode->i_sb);
 tcon = tlink_tcon(cfile->tlink);
 server = tcon->ses->server;







 full_path = build_path_from_dentry(cfile->dentry);
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  mutex_unlock(&cfile->fh_mutex);
  free_xid(xid);
  return rc;
 }

 cifs_dbg(FYI, "inode = 0x%p file flags 0x%x for %s\n",
   inode, cfile->f_flags, full_path);

 if (tcon->ses->server->oplocks)
  oplock = REQ_OPLOCK;
 else
  oplock = 0;

 if (tcon->unix_ext && cap_unix(tcon->ses) &&
     (CIFS_UNIX_POSIX_PATH_OPS_CAP &
    le64_to_cpu(tcon->fsUnixInfo.Capability))) {




  unsigned int oflags = cfile->f_flags &
      ~(O_CREAT | O_EXCL | O_TRUNC);

  rc = cifs_posix_open(full_path, ((void*)0), inode->i_sb,
         cifs_sb->mnt_file_mode ,
         oflags, &oplock, &cfile->fid.netfid, xid);
  if (rc == 0) {
   cifs_dbg(FYI, "posix reopen succeeded\n");
   oparms.reconnect = 1;
   goto reopen_success;
  }




 }

 desired_access = cifs_convert_flags(cfile->f_flags);

 if (backup_cred(cifs_sb))
  create_options |= CREATE_OPEN_BACKUP_INTENT;

 if (server->ops->get_lease_key)
  server->ops->get_lease_key(inode, &cfile->fid);

 oparms.tcon = tcon;
 oparms.cifs_sb = cifs_sb;
 oparms.desired_access = desired_access;
 oparms.create_options = create_options;
 oparms.disposition = disposition;
 oparms.path = full_path;
 oparms.fid = &cfile->fid;
 oparms.reconnect = 1;
 rc = server->ops->open(xid, &oparms, &oplock, ((void*)0));
 if (rc == -ENOENT && oparms.reconnect == 0) {

  rc = server->ops->open(xid, &oparms, &oplock, ((void*)0));

  oparms.reconnect = 1;
 }

 if (rc) {
  mutex_unlock(&cfile->fh_mutex);
  cifs_dbg(FYI, "cifs_reopen returned 0x%x\n", rc);
  cifs_dbg(FYI, "oplock: %d\n", oplock);
  goto reopen_error_exit;
 }

reopen_success:
 cfile->invalidHandle = 0;
 mutex_unlock(&cfile->fh_mutex);
 cinode = CIFS_I(inode);

 if (can_flush) {
  rc = filemap_write_and_wait(inode->i_mapping);
  if (!is_interrupt_error(rc))
   mapping_set_error(inode->i_mapping, rc);

  if (tcon->unix_ext)
   rc = cifs_get_inode_info_unix(&inode, full_path,
            inode->i_sb, xid);
  else
   rc = cifs_get_inode_info(&inode, full_path, ((void*)0),
       inode->i_sb, xid, ((void*)0));
 }
 if (server->ops->is_read_op(oplock) && cifs_has_mand_locks(cinode)) {
  cifs_dbg(FYI, "Reset oplock val from read to None due to mand locks\n");
  oplock = 0;
 }

 server->ops->set_fid(cfile, &cfile->fid, oplock);
 if (oparms.reconnect)
  cifs_relock_file(cfile);

reopen_error_exit:
 kfree(full_path);
 free_xid(xid);
 return rc;
}
