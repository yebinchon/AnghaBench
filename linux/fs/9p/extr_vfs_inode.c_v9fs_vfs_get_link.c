
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct p9_wstat {int mode; char* extension; } ;
struct p9_fid {int mode; char* extension; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 int EBADF ;
 int ECHILD ;
 int EINVAL ;
 char const* ERR_CAST (struct p9_wstat*) ;
 char const* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct p9_wstat*) ;
 int P9_DEBUG_VFS ;
 int P9_DMSYMLINK ;
 int PATH_MAX ;
 int kfree (struct p9_wstat*) ;
 int kfree_link ;
 struct p9_wstat* p9_client_stat (struct p9_wstat*) ;
 int p9_debug (int ,char*,struct dentry*) ;
 int p9stat_free (struct p9_wstat*) ;
 int set_delayed_call (struct delayed_call*,int ,char*) ;
 int strlen (char*) ;
 struct v9fs_session_info* v9fs_dentry2v9ses (struct dentry*) ;
 struct p9_wstat* v9fs_fid_lookup (struct dentry*) ;
 int v9fs_proto_dotu (struct v9fs_session_info*) ;

__attribute__((used)) static const char *v9fs_vfs_get_link(struct dentry *dentry,
         struct inode *inode,
         struct delayed_call *done)
{
 struct v9fs_session_info *v9ses;
 struct p9_fid *fid;
 struct p9_wstat *st;
 char *res;

 if (!dentry)
  return ERR_PTR(-ECHILD);

 v9ses = v9fs_dentry2v9ses(dentry);
 fid = v9fs_fid_lookup(dentry);
 p9_debug(P9_DEBUG_VFS, "%pd\n", dentry);

 if (IS_ERR(fid))
  return ERR_CAST(fid);

 if (!v9fs_proto_dotu(v9ses))
  return ERR_PTR(-EBADF);

 st = p9_client_stat(fid);
 if (IS_ERR(st))
  return ERR_CAST(st);

 if (!(st->mode & P9_DMSYMLINK)) {
  p9stat_free(st);
  kfree(st);
  return ERR_PTR(-EINVAL);
 }
 res = st->extension;
 st->extension = ((void*)0);
 if (strlen(res) >= PATH_MAX)
  res[PATH_MAX - 1] = '\0';

 p9stat_free(st);
 kfree(st);
 set_delayed_call(done, kfree_link, res);
 return res;
}
