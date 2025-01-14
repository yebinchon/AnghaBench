
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_session_info {scalar_t__ cache; } ;
struct p9_fid {int dummy; } ;
struct inode {int i_ino; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 scalar_t__ CACHE_FSCACHE ;
 scalar_t__ CACHE_LOOSE ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_VFS ;
 int PTR_ERR (struct p9_fid*) ;
 int d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,int ) ;
 int ihold (int ) ;
 int p9_client_link (struct p9_fid*,struct p9_fid*,int ) ;
 int p9_debug (int ,char*,int,...) ;
 struct p9_fid* v9fs_fid_lookup (struct dentry*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;
 int v9fs_invalidate_inode_attr (struct inode*) ;
 struct p9_fid* v9fs_parent_fid (struct dentry*) ;
 int v9fs_refresh_inode_dotl (struct p9_fid*,int ) ;

__attribute__((used)) static int
v9fs_vfs_link_dotl(struct dentry *old_dentry, struct inode *dir,
  struct dentry *dentry)
{
 int err;
 struct p9_fid *dfid, *oldfid;
 struct v9fs_session_info *v9ses;

 p9_debug(P9_DEBUG_VFS, "dir ino: %lu, old_name: %pd, new_name: %pd\n",
   dir->i_ino, old_dentry, dentry);

 v9ses = v9fs_inode2v9ses(dir);
 dfid = v9fs_parent_fid(dentry);
 if (IS_ERR(dfid))
  return PTR_ERR(dfid);

 oldfid = v9fs_fid_lookup(old_dentry);
 if (IS_ERR(oldfid))
  return PTR_ERR(oldfid);

 err = p9_client_link(dfid, oldfid, dentry->d_name.name);

 if (err < 0) {
  p9_debug(P9_DEBUG_VFS, "p9_client_link failed %d\n", err);
  return err;
 }

 v9fs_invalidate_inode_attr(dir);
 if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {

  struct p9_fid *fid;
  fid = v9fs_fid_lookup(old_dentry);
  if (IS_ERR(fid))
   return PTR_ERR(fid);

  v9fs_refresh_inode_dotl(fid, d_inode(old_dentry));
 }
 ihold(d_inode(old_dentry));
 d_instantiate(dentry, d_inode(old_dentry));

 return err;
}
