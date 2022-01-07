
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 int ECHILD ;
 char const* ERR_CAST (struct p9_fid*) ;
 char const* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_VFS ;
 int kfree_link ;
 int p9_client_readlink (struct p9_fid*,char**) ;
 int p9_debug (int ,char*,struct dentry*) ;
 int set_delayed_call (struct delayed_call*,int ,char*) ;
 struct p9_fid* v9fs_fid_lookup (struct dentry*) ;

__attribute__((used)) static const char *
v9fs_vfs_get_link_dotl(struct dentry *dentry,
         struct inode *inode,
         struct delayed_call *done)
{
 struct p9_fid *fid;
 char *target;
 int retval;

 if (!dentry)
  return ERR_PTR(-ECHILD);

 p9_debug(P9_DEBUG_VFS, "%pd\n", dentry);

 fid = v9fs_fid_lookup(dentry);
 if (IS_ERR(fid))
  return ERR_CAST(fid);
 retval = p9_client_readlink(fid, &target);
 if (retval)
  return ERR_PTR(retval);
 set_delayed_call(done, kfree_link, target);
 return target;
}
