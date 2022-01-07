
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int dummy; } ;
struct dentry {int dummy; } ;


 struct p9_fid* ERR_PTR (int) ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int O_RDWR ;
 struct p9_fid* clone_fid (int ) ;
 int p9_client_clunk (struct p9_fid*) ;
 int p9_client_open (struct p9_fid*,int ) ;
 int v9fs_fid_lookup_with_uid (struct dentry*,int ,int ) ;

struct p9_fid *v9fs_writeback_fid(struct dentry *dentry)
{
 int err;
 struct p9_fid *fid;

 fid = clone_fid(v9fs_fid_lookup_with_uid(dentry, GLOBAL_ROOT_UID, 0));
 if (IS_ERR(fid))
  goto error_out;






 err = p9_client_open(fid, O_RDWR);
 if (err < 0) {
  p9_client_clunk(fid);
  fid = ERR_PTR(err);
  goto error_out;
 }
error_out:
 return fid;
}
