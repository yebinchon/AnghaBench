
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int dummy; } ;
struct dentry {int dummy; } ;


 struct p9_fid* v9fs_fid_lookup (struct dentry*) ;
 int v9fs_fid_xattr_set (struct p9_fid*,char const*,void const*,size_t,int) ;

int v9fs_xattr_set(struct dentry *dentry, const char *name,
     const void *value, size_t value_len, int flags)
{
 struct p9_fid *fid = v9fs_fid_lookup(dentry);
 return v9fs_fid_xattr_set(fid, name, value, value_len, flags);
}
