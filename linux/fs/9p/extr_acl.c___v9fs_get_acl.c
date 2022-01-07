
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct p9_fid {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int ENODATA ;
 int ENOMEM ;
 int ENOSYS ;
 int EOPNOTSUPP ;
 struct posix_acl* ERR_PTR (int ) ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int init_user_ns ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 struct posix_acl* posix_acl_from_xattr (int *,void*,int ) ;
 int v9fs_fid_xattr_get (struct p9_fid*,char*,void*,int ) ;

__attribute__((used)) static struct posix_acl *__v9fs_get_acl(struct p9_fid *fid, char *name)
{
 ssize_t size;
 void *value = ((void*)0);
 struct posix_acl *acl = ((void*)0);

 size = v9fs_fid_xattr_get(fid, name, ((void*)0), 0);
 if (size > 0) {
  value = kzalloc(size, GFP_NOFS);
  if (!value)
   return ERR_PTR(-ENOMEM);
  size = v9fs_fid_xattr_get(fid, name, value, size);
  if (size > 0) {
   acl = posix_acl_from_xattr(&init_user_ns, value, size);
   if (IS_ERR(acl))
    goto err_out;
  }
 } else if (size == -ENODATA || size == 0 ||
     size == -ENOSYS || size == -EOPNOTSUPP) {
  acl = ((void*)0);
 } else
  acl = ERR_PTR(-EIO);

err_out:
 kfree(value);
 return acl;
}
