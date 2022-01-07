
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct file {int f_pos; struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_2__* ses; scalar_t__ unix_ext; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct TYPE_8__ {int endOfSearch; int info_level; } ;
struct cifsFileInfo {int invalidHandle; TYPE_4__ srch_inf; int fid; struct tcon_link* tlink; int file_info_lock; } ;
struct TCP_Server_Info {TYPE_3__* ops; TYPE_1__* vals; } ;
typedef int __u16 ;
struct TYPE_7__ {int (* query_dir_first ) (unsigned int const,struct cifs_tcon*,char*,struct cifs_sb_info*,int *,int,TYPE_4__*) ;} ;
struct TYPE_6__ {int capabilities; struct TCP_Server_Info* server; } ;
struct TYPE_5__ {int cap_nt_find; } ;


 struct cifs_sb_info* CIFS_FILE_SB (struct file*) ;
 int CIFS_MOUNT_SERVER_INUM ;
 int CIFS_SEARCH_BACKUP_SEARCH ;
 int CIFS_SEARCH_CLOSE_AT_END ;
 int CIFS_SEARCH_RETURN_RESUME ;
 int ENOMEM ;
 int ENOSYS ;
 int EOPNOTSUPP ;
 int FYI ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 int SMB_FIND_FILE_DIRECTORY_INFO ;
 int SMB_FIND_FILE_ID_FULL_DIR_INFO ;
 int SMB_FIND_FILE_INFO_STANDARD ;
 int SMB_FIND_FILE_UNIX ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 char* build_path_from_dentry (int ) ;
 int cifs_dbg (int ,char*,char*,int ) ;
 struct tcon_link* cifs_get_tlink (struct tcon_link*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int file_dentry (struct file*) ;
 int kfree (char*) ;
 struct cifsFileInfo* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int stub1 (unsigned int const,struct cifs_tcon*,char*,struct cifs_sb_info*,int *,int,TYPE_4__*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

__attribute__((used)) static int
initiate_cifs_search(const unsigned int xid, struct file *file)
{
 __u16 search_flags;
 int rc = 0;
 char *full_path = ((void*)0);
 struct cifsFileInfo *cifsFile;
 struct cifs_sb_info *cifs_sb = CIFS_FILE_SB(file);
 struct tcon_link *tlink = ((void*)0);
 struct cifs_tcon *tcon;
 struct TCP_Server_Info *server;

 if (file->private_data == ((void*)0)) {
  tlink = cifs_sb_tlink(cifs_sb);
  if (IS_ERR(tlink))
   return PTR_ERR(tlink);

  cifsFile = kzalloc(sizeof(struct cifsFileInfo), GFP_KERNEL);
  if (cifsFile == ((void*)0)) {
   rc = -ENOMEM;
   goto error_exit;
  }
  spin_lock_init(&cifsFile->file_info_lock);
  file->private_data = cifsFile;
  cifsFile->tlink = cifs_get_tlink(tlink);
  tcon = tlink_tcon(tlink);
 } else {
  cifsFile = file->private_data;
  tcon = tlink_tcon(cifsFile->tlink);
 }

 server = tcon->ses->server;

 if (!server->ops->query_dir_first) {
  rc = -ENOSYS;
  goto error_exit;
 }

 cifsFile->invalidHandle = 1;
 cifsFile->srch_inf.endOfSearch = 0;

 full_path = build_path_from_dentry(file_dentry(file));
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  goto error_exit;
 }

 cifs_dbg(FYI, "Full path: %s start at: %lld\n", full_path, file->f_pos);

ffirst_retry:



 if (tcon->unix_ext)
  cifsFile->srch_inf.info_level = SMB_FIND_FILE_UNIX;
 else if ((tcon->ses->capabilities &
    tcon->ses->server->vals->cap_nt_find) == 0) {
  cifsFile->srch_inf.info_level = SMB_FIND_FILE_INFO_STANDARD;
 } else if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM) {
  cifsFile->srch_inf.info_level = SMB_FIND_FILE_ID_FULL_DIR_INFO;
 } else {
  cifsFile->srch_inf.info_level = SMB_FIND_FILE_DIRECTORY_INFO;
 }

 search_flags = CIFS_SEARCH_CLOSE_AT_END | CIFS_SEARCH_RETURN_RESUME;
 if (backup_cred(cifs_sb))
  search_flags |= CIFS_SEARCH_BACKUP_SEARCH;

 rc = server->ops->query_dir_first(xid, tcon, full_path, cifs_sb,
       &cifsFile->fid, search_flags,
       &cifsFile->srch_inf);

 if (rc == 0)
  cifsFile->invalidHandle = 0;



 else if ((rc == -EOPNOTSUPP) &&
  (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM)) {
  cifs_sb->mnt_cifs_flags &= ~CIFS_MOUNT_SERVER_INUM;
  goto ffirst_retry;
 }
error_exit:
 kfree(full_path);
 cifs_put_tlink(tlink);
 return rc;
}
