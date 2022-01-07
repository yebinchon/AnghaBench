
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_ORDWR ;
 int PTR_ERR (struct p9_fid*) ;
 int p9_client_clunk (struct p9_fid*) ;
 int unixmode2p9mode (struct v9fs_session_info*,int ) ;
 struct p9_fid* v9fs_create (struct v9fs_session_info*,struct inode*,struct dentry*,int *,int ,int ) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;
 int v9fs_invalidate_inode_attr (struct inode*) ;

__attribute__((used)) static int
v9fs_vfs_create(struct inode *dir, struct dentry *dentry, umode_t mode,
  bool excl)
{
 struct v9fs_session_info *v9ses = v9fs_inode2v9ses(dir);
 u32 perm = unixmode2p9mode(v9ses, mode);
 struct p9_fid *fid;


 fid = v9fs_create(v9ses, dir, dentry, ((void*)0), perm, P9_ORDWR);
 if (IS_ERR(fid))
  return PTR_ERR(fid);

 v9fs_invalidate_inode_attr(dir);
 p9_client_clunk(fid);

 return 0;
}
