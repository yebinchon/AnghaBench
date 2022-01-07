
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct posix_acl {int dummy; } ;
struct p9_qid {int dummy; } ;
struct p9_fid {int i_mode; int i_sb; } ;
struct inode {int i_mode; int i_sb; } ;
struct TYPE_2__ {unsigned char* name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef int kgid_t ;


 scalar_t__ CACHE_FSCACHE ;
 scalar_t__ CACHE_LOOSE ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_VFS ;
 int PTR_ERR (struct p9_fid*) ;
 int S_IFDIR ;
 int S_ISGID ;
 int d_instantiate (struct dentry*,struct p9_fid*) ;
 int inc_nlink (struct p9_fid*) ;
 int p9_client_clunk (struct p9_fid*) ;
 int p9_client_mkdir_dotl (struct p9_fid*,unsigned char const*,int,int ,struct p9_qid*) ;
 struct p9_fid* p9_client_walk (struct p9_fid*,int,unsigned char const**,int) ;
 int p9_debug (int ,char*,...) ;
 int v9fs_acl_mode (struct p9_fid*,int*,struct posix_acl**,struct posix_acl**) ;
 int v9fs_fid_add (struct dentry*,struct p9_fid*) ;
 int v9fs_get_fsgid_for_create (struct p9_fid*) ;
 struct p9_fid* v9fs_get_inode (int ,int,int ) ;
 struct p9_fid* v9fs_get_new_inode_from_fid (struct v9fs_session_info*,struct p9_fid*,int ) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct p9_fid*) ;
 int v9fs_invalidate_inode_attr (struct p9_fid*) ;
 struct p9_fid* v9fs_parent_fid (struct dentry*) ;
 int v9fs_put_acl (struct posix_acl*,struct posix_acl*) ;
 int v9fs_set_create_acl (struct p9_fid*,struct p9_fid*,struct posix_acl*,struct posix_acl*) ;

__attribute__((used)) static int v9fs_vfs_mkdir_dotl(struct inode *dir,
          struct dentry *dentry, umode_t omode)
{
 int err;
 struct v9fs_session_info *v9ses;
 struct p9_fid *fid = ((void*)0), *dfid = ((void*)0);
 kgid_t gid;
 const unsigned char *name;
 umode_t mode;
 struct inode *inode;
 struct p9_qid qid;
 struct posix_acl *dacl = ((void*)0), *pacl = ((void*)0);

 p9_debug(P9_DEBUG_VFS, "name %pd\n", dentry);
 err = 0;
 v9ses = v9fs_inode2v9ses(dir);

 omode |= S_IFDIR;
 if (dir->i_mode & S_ISGID)
  omode |= S_ISGID;

 dfid = v9fs_parent_fid(dentry);
 if (IS_ERR(dfid)) {
  err = PTR_ERR(dfid);
  p9_debug(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
  dfid = ((void*)0);
  goto error;
 }

 gid = v9fs_get_fsgid_for_create(dir);
 mode = omode;

 err = v9fs_acl_mode(dir, &mode, &dacl, &pacl);
 if (err) {
  p9_debug(P9_DEBUG_VFS, "Failed to get acl values in mkdir %d\n",
    err);
  goto error;
 }
 name = dentry->d_name.name;
 err = p9_client_mkdir_dotl(dfid, name, mode, gid, &qid);
 if (err < 0)
  goto error;

 fid = p9_client_walk(dfid, 1, &name, 1);
 if (IS_ERR(fid)) {
  err = PTR_ERR(fid);
  p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n",
    err);
  fid = ((void*)0);
  goto error;
 }


 if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {
  inode = v9fs_get_new_inode_from_fid(v9ses, fid, dir->i_sb);
  if (IS_ERR(inode)) {
   err = PTR_ERR(inode);
   p9_debug(P9_DEBUG_VFS, "inode creation failed %d\n",
     err);
   goto error;
  }
  v9fs_fid_add(dentry, fid);
  v9fs_set_create_acl(inode, fid, dacl, pacl);
  d_instantiate(dentry, inode);
  fid = ((void*)0);
  err = 0;
 } else {





  inode = v9fs_get_inode(dir->i_sb, mode, 0);
  if (IS_ERR(inode)) {
   err = PTR_ERR(inode);
   goto error;
  }
  v9fs_set_create_acl(inode, fid, dacl, pacl);
  d_instantiate(dentry, inode);
 }
 inc_nlink(dir);
 v9fs_invalidate_inode_attr(dir);
error:
 if (fid)
  p9_client_clunk(fid);
 v9fs_put_acl(dacl, pacl);
 return err;
}
