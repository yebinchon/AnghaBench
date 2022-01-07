
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EPERM ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_ERROR ;
 int P9_OREAD ;
 int PTR_ERR (struct p9_fid*) ;
 int p9_client_clunk (struct p9_fid*) ;
 int p9_debug (int ,char*) ;
 struct p9_fid* v9fs_create (struct v9fs_session_info*,struct inode*,struct dentry*,char*,int ,int ) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;
 int v9fs_invalidate_inode_attr (struct inode*) ;
 int v9fs_proto_dotu (struct v9fs_session_info*) ;

__attribute__((used)) static int v9fs_vfs_mkspecial(struct inode *dir, struct dentry *dentry,
 u32 perm, const char *extension)
{
 struct p9_fid *fid;
 struct v9fs_session_info *v9ses;

 v9ses = v9fs_inode2v9ses(dir);
 if (!v9fs_proto_dotu(v9ses)) {
  p9_debug(P9_DEBUG_ERROR, "not extended\n");
  return -EPERM;
 }

 fid = v9fs_create(v9ses, dir, dentry, (char *) extension, perm,
        P9_OREAD);
 if (IS_ERR(fid))
  return PTR_ERR(fid);

 v9fs_invalidate_inode_attr(dir);
 p9_client_clunk(fid);
 return 0;
}
