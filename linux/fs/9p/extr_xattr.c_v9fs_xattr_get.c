
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int dummy; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_VFS ;
 int PTR_ERR (struct p9_fid*) ;
 int p9_debug (int ,char*,char const*,size_t) ;
 struct p9_fid* v9fs_fid_lookup (struct dentry*) ;
 int v9fs_fid_xattr_get (struct p9_fid*,char const*,void*,size_t) ;

ssize_t v9fs_xattr_get(struct dentry *dentry, const char *name,
         void *buffer, size_t buffer_size)
{
 struct p9_fid *fid;

 p9_debug(P9_DEBUG_VFS, "name = %s value_len = %zu\n",
   name, buffer_size);
 fid = v9fs_fid_lookup(dentry);
 if (IS_ERR(fid))
  return PTR_ERR(fid);

 return v9fs_fid_xattr_get(fid, name, buffer, buffer_size);
}
