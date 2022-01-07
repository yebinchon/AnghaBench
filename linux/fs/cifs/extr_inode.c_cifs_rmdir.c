
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct inode {int i_mtime; int i_ctime; int i_lock; int i_sb; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct cifsInodeInfo {scalar_t__ time; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* rmdir ) (unsigned int,struct cifs_tcon*,char*,struct cifs_sb_info*) ;} ;
struct TYPE_3__ {struct TCP_Server_Info* server; } ;


 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int ENOMEM ;
 int ENOSYS ;
 int FYI ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 char* build_path_from_dentry (struct dentry*) ;
 int cifs_dbg (int ,char*,struct inode*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int clear_nlink (struct inode*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 int i_size_write (struct inode*,int ) ;
 int kfree (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned int,struct cifs_tcon*,char*,struct cifs_sb_info*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int cifs_rmdir(struct inode *inode, struct dentry *direntry)
{
 int rc = 0;
 unsigned int xid;
 struct cifs_sb_info *cifs_sb;
 struct tcon_link *tlink;
 struct cifs_tcon *tcon;
 struct TCP_Server_Info *server;
 char *full_path = ((void*)0);
 struct cifsInodeInfo *cifsInode;

 cifs_dbg(FYI, "cifs_rmdir, inode = 0x%p\n", inode);

 xid = get_xid();

 full_path = build_path_from_dentry(direntry);
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  goto rmdir_exit;
 }

 cifs_sb = CIFS_SB(inode->i_sb);
 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink)) {
  rc = PTR_ERR(tlink);
  goto rmdir_exit;
 }
 tcon = tlink_tcon(tlink);
 server = tcon->ses->server;

 if (!server->ops->rmdir) {
  rc = -ENOSYS;
  cifs_put_tlink(tlink);
  goto rmdir_exit;
 }

 rc = server->ops->rmdir(xid, tcon, full_path, cifs_sb);
 cifs_put_tlink(tlink);

 if (!rc) {
  spin_lock(&d_inode(direntry)->i_lock);
  i_size_write(d_inode(direntry), 0);
  clear_nlink(d_inode(direntry));
  spin_unlock(&d_inode(direntry)->i_lock);
 }

 cifsInode = CIFS_I(d_inode(direntry));

 cifsInode->time = 0;

 cifsInode = CIFS_I(inode);




 cifsInode->time = 0;

 d_inode(direntry)->i_ctime = inode->i_ctime = inode->i_mtime =
  current_time(inode);

rmdir_exit:
 kfree(full_path);
 free_xid(xid);
 return rc;
}
