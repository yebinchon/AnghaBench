
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v9fs_session_info {int flags; unsigned char* uname; int rename_sem; int aname; int clnt; } ;
struct p9_fid {int dummy; } ;
struct TYPE_3__ {unsigned char const* name; } ;
struct dentry {int d_lock; TYPE_2__* d_sb; TYPE_1__ d_name; struct dentry* d_parent; } ;
typedef int kuid_t ;
struct TYPE_4__ {struct dentry* s_root; } ;


 int ENOENT ;
 int EPERM ;
 struct p9_fid* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_MAXWELEM ;
 int V9FS_ACCESS_MASK ;
 int V9FS_ACCESS_SINGLE ;
 int __add_fid (struct dentry*,struct p9_fid*) ;
 int build_path_from_dentry (struct v9fs_session_info*,struct dentry*,unsigned char const***) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int down_read (int *) ;
 int kfree (unsigned char const**) ;
 int min (int,int ) ;
 struct p9_fid* p9_client_attach (int ,int *,unsigned char const*,int ,int ) ;
 int p9_client_clunk (struct p9_fid*) ;
 struct p9_fid* p9_client_walk (struct p9_fid*,int,unsigned char const**,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;
 struct v9fs_session_info* v9fs_dentry2v9ses (struct dentry*) ;
 int v9fs_fid_add (struct dentry*,struct p9_fid*) ;
 struct p9_fid* v9fs_fid_find (struct dentry*,int ,int) ;
 scalar_t__ v9fs_proto_dotl (struct v9fs_session_info*) ;
 scalar_t__ v9fs_proto_dotu (struct v9fs_session_info*) ;

__attribute__((used)) static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
            kuid_t uid, int any)
{
 struct dentry *ds;
 const unsigned char **wnames, *uname;
 int i, n, l, clone, access;
 struct v9fs_session_info *v9ses;
 struct p9_fid *fid, *old_fid = ((void*)0);

 v9ses = v9fs_dentry2v9ses(dentry);
 access = v9ses->flags & V9FS_ACCESS_MASK;
 fid = v9fs_fid_find(dentry, uid, any);
 if (fid)
  return fid;





 down_read(&v9ses->rename_sem);
 ds = dentry->d_parent;
 fid = v9fs_fid_find(ds, uid, any);
 if (fid) {

  fid = p9_client_walk(fid, 1, &dentry->d_name.name, 1);
  goto fid_out;
 }
 up_read(&v9ses->rename_sem);


 fid = v9fs_fid_find(dentry->d_sb->s_root, uid, any);
 if (!fid) {

  if (access == V9FS_ACCESS_SINGLE)
   return ERR_PTR(-EPERM);

  if (v9fs_proto_dotu(v9ses) || v9fs_proto_dotl(v9ses))
    uname = ((void*)0);
  else
   uname = v9ses->uname;

  fid = p9_client_attach(v9ses->clnt, ((void*)0), uname, uid,
           v9ses->aname);
  if (IS_ERR(fid))
   return fid;

  v9fs_fid_add(dentry->d_sb->s_root, fid);
 }

 if (dentry->d_sb->s_root == dentry)
  return fid;





 down_read(&v9ses->rename_sem);
 n = build_path_from_dentry(v9ses, dentry, &wnames);
 if (n < 0) {
  fid = ERR_PTR(n);
  goto err_out;
 }
 clone = 1;
 i = 0;
 while (i < n) {
  l = min(n - i, P9_MAXWELEM);




  fid = p9_client_walk(fid, l, &wnames[i], clone);
  if (IS_ERR(fid)) {
   if (old_fid) {





    p9_client_clunk(old_fid);
   }
   kfree(wnames);
   goto err_out;
  }
  old_fid = fid;
  i += l;
  clone = 0;
 }
 kfree(wnames);
fid_out:
 if (!IS_ERR(fid)) {
  spin_lock(&dentry->d_lock);
  if (d_unhashed(dentry)) {
   spin_unlock(&dentry->d_lock);
   p9_client_clunk(fid);
   fid = ERR_PTR(-ENOENT);
  } else {
   __add_fid(dentry, fid);
   spin_unlock(&dentry->d_lock);
  }
 }
err_out:
 up_read(&v9ses->rename_sem);
 return fid;
}
