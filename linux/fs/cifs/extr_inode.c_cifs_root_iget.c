
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_lock; int i_gid; int i_uid; int * i_fop; int * i_op; int i_mode; } ;
struct cifs_tcon {int unix_ext; scalar_t__ pipe; int resource_id; } ;
struct cifs_sb_info {int mnt_cifs_flags; int mnt_gid; int mnt_uid; scalar_t__ prepath; } ;
struct TYPE_2__ {int uniqueid; } ;


 int CIFS_DIR_SEP (struct cifs_sb_info*) ;
 TYPE_1__* CIFS_I (struct inode*) ;
 int CIFS_MOUNT_USE_PREFIX_PATH ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 long ENOMEM ;
 long EOPNOTSUPP ;
 struct inode* ERR_PTR (long) ;
 int FYI ;
 int GFP_KERNEL ;
 int S_IFDIR ;
 int VFS ;
 int cifs_dbg (int ,char*) ;
 long cifs_get_inode_info (struct inode**,char*,int *,struct super_block*,unsigned int,int *) ;
 long cifs_get_inode_info_unix (struct inode**,char*,struct super_block*,unsigned int) ;
 int cifs_ipc_inode_ops ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int convert_delimiter (char*,int ) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 int iget_failed (struct inode*) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 char* kzalloc (int,int ) ;
 int memcpy (char*,scalar_t__,int) ;
 int set_nlink (struct inode*,int) ;
 int simple_dir_operations ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (scalar_t__) ;

struct inode *cifs_root_iget(struct super_block *sb)
{
 unsigned int xid;
 struct cifs_sb_info *cifs_sb = CIFS_SB(sb);
 struct inode *inode = ((void*)0);
 long rc;
 struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);
 char *path = ((void*)0);
 int len;

 if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_USE_PREFIX_PATH)
     && cifs_sb->prepath) {
  len = strlen(cifs_sb->prepath);
  path = kzalloc(len + 2 , GFP_KERNEL);
  if (path == ((void*)0))
   return ERR_PTR(-ENOMEM);
  path[0] = '/';
  memcpy(path+1, cifs_sb->prepath, len);
 } else {
  path = kstrdup("", GFP_KERNEL);
  if (path == ((void*)0))
   return ERR_PTR(-ENOMEM);
 }

 xid = get_xid();
 if (tcon->unix_ext) {
  rc = cifs_get_inode_info_unix(&inode, path, sb, xid);

  if (rc != -EOPNOTSUPP)
   goto iget_no_retry;
  cifs_dbg(VFS, "server does not support POSIX extensions");
  tcon->unix_ext = 0;
 }

 convert_delimiter(path, CIFS_DIR_SEP(cifs_sb));
 rc = cifs_get_inode_info(&inode, path, ((void*)0), sb, xid, ((void*)0));

iget_no_retry:
 if (!inode) {
  inode = ERR_PTR(rc);
  goto out;
 }






 if (rc && tcon->pipe) {
  cifs_dbg(FYI, "ipc connection - fake read inode\n");
  spin_lock(&inode->i_lock);
  inode->i_mode |= S_IFDIR;
  set_nlink(inode, 2);
  inode->i_op = &cifs_ipc_inode_ops;
  inode->i_fop = &simple_dir_operations;
  inode->i_uid = cifs_sb->mnt_uid;
  inode->i_gid = cifs_sb->mnt_gid;
  spin_unlock(&inode->i_lock);
 } else if (rc) {
  iget_failed(inode);
  inode = ERR_PTR(rc);
 }

out:
 kfree(path);
 free_xid(xid);
 return inode;
}
