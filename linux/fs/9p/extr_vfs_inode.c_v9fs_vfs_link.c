
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int fid; } ;
struct inode {int i_ino; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_VFS ;
 int P9_DMLINK ;
 int PTR_ERR (struct p9_fid*) ;
 int U32_MAX_DIGITS ;
 int d_inode (struct dentry*) ;
 int p9_client_clunk (struct p9_fid*) ;
 int p9_debug (int ,char*,int ,struct dentry*,struct dentry*) ;
 int sprintf (char*,char*,int) ;
 struct p9_fid* v9fs_fid_clone (struct dentry*) ;
 int v9fs_invalidate_inode_attr (struct inode*) ;
 int v9fs_refresh_inode (struct p9_fid*,int ) ;
 int v9fs_vfs_mkspecial (struct inode*,struct dentry*,int ,char*) ;

__attribute__((used)) static int
v9fs_vfs_link(struct dentry *old_dentry, struct inode *dir,
       struct dentry *dentry)
{
 int retval;
 char name[1 + U32_MAX_DIGITS + 2];
 struct p9_fid *oldfid;

 p9_debug(P9_DEBUG_VFS, " %lu,%pd,%pd\n",
   dir->i_ino, dentry, old_dentry);

 oldfid = v9fs_fid_clone(old_dentry);
 if (IS_ERR(oldfid))
  return PTR_ERR(oldfid);

 sprintf(name, "%d\n", oldfid->fid);
 retval = v9fs_vfs_mkspecial(dir, dentry, P9_DMLINK, name);
 if (!retval) {
  v9fs_refresh_inode(oldfid, d_inode(old_dentry));
  v9fs_invalidate_inode_attr(dir);
 }
 p9_client_clunk(oldfid);
 return retval;
}
