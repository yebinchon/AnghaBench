
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int i_sb; } ;
struct cifs_tcon {scalar_t__ unix_ext; } ;
struct cifs_sb_info {int dummy; } ;


 struct cifs_sb_info* CIFS_SB (int ) ;
 int EACCES ;
 int ENOENT ;
 int ENOMEM ;
 struct inode* ERR_CAST (struct tcon_link*) ;
 struct inode* ERR_PTR (int) ;
 int FYI ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 char* build_path_from_dentry (struct inode*) ;
 int check_name (struct inode*,struct cifs_tcon*) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_get_inode_info (struct inode**,char*,int *,int ,unsigned int,int *) ;
 int cifs_get_inode_info_unix (struct inode**,char*,int ,unsigned int) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int cifs_set_time (struct inode*,int ) ;
 int d_inode (struct inode*) ;
 scalar_t__ d_really_is_positive (struct inode*) ;
 struct inode* d_splice_alias (struct inode*,struct inode*) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 int jiffies ;
 int kfree (char*) ;
 int renew_parental_timestamps (struct inode*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;
 scalar_t__ unlikely (int) ;

struct dentry *
cifs_lookup(struct inode *parent_dir_inode, struct dentry *direntry,
     unsigned int flags)
{
 unsigned int xid;
 int rc = 0;
 struct cifs_sb_info *cifs_sb;
 struct tcon_link *tlink;
 struct cifs_tcon *pTcon;
 struct inode *newInode = ((void*)0);
 char *full_path = ((void*)0);

 xid = get_xid();

 cifs_dbg(FYI, "parent inode = 0x%p name is: %pd and dentry = 0x%p\n",
   parent_dir_inode, direntry, direntry);



 cifs_sb = CIFS_SB(parent_dir_inode->i_sb);
 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink)) {
  free_xid(xid);
  return ERR_CAST(tlink);
 }
 pTcon = tlink_tcon(tlink);

 rc = check_name(direntry, pTcon);
 if (unlikely(rc)) {
  cifs_put_tlink(tlink);
  free_xid(xid);
  return ERR_PTR(rc);
 }




 full_path = build_path_from_dentry(direntry);
 if (full_path == ((void*)0)) {
  cifs_put_tlink(tlink);
  free_xid(xid);
  return ERR_PTR(-ENOMEM);
 }

 if (d_really_is_positive(direntry)) {
  cifs_dbg(FYI, "non-NULL inode in lookup\n");
 } else {
  cifs_dbg(FYI, "NULL inode in lookup\n");
 }
 cifs_dbg(FYI, "Full path: %s inode = 0x%p\n",
   full_path, d_inode(direntry));

 if (pTcon->unix_ext) {
  rc = cifs_get_inode_info_unix(&newInode, full_path,
           parent_dir_inode->i_sb, xid);
 } else {
  rc = cifs_get_inode_info(&newInode, full_path, ((void*)0),
    parent_dir_inode->i_sb, xid, ((void*)0));
 }

 if (rc == 0) {


  renew_parental_timestamps(direntry);
 } else if (rc == -ENOENT) {
  cifs_set_time(direntry, jiffies);
  newInode = ((void*)0);
 } else {
  if (rc != -EACCES) {
   cifs_dbg(FYI, "Unexpected lookup error %d\n", rc);


  }
  newInode = ERR_PTR(rc);
 }
 kfree(full_path);
 cifs_put_tlink(tlink);
 free_xid(xid);
 return d_splice_alias(newInode, direntry);
}
