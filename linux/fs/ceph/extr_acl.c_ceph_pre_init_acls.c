
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct posix_acl {int a_count; } ;
struct inode {int dummy; } ;
struct ceph_pagelist {int dummy; } ;
struct ceph_acl_sec_ctx {struct ceph_pagelist* pagelist; struct posix_acl* default_acl; struct posix_acl* acl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 int XATTR_NAME_POSIX_ACL_ACCESS ;
 int XATTR_NAME_POSIX_ACL_DEFAULT ;
 struct ceph_pagelist* ceph_pagelist_alloc (int ) ;
 int ceph_pagelist_append (struct ceph_pagelist*,void*,size_t) ;
 int ceph_pagelist_encode_32 (struct ceph_pagelist*,size_t) ;
 int ceph_pagelist_encode_string (struct ceph_pagelist*,int ,size_t) ;
 int ceph_pagelist_release (struct ceph_pagelist*) ;
 int ceph_pagelist_reserve (struct ceph_pagelist*,size_t) ;
 int init_user_ns ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 int max (size_t,size_t) ;
 int posix_acl_create (struct inode*,int *,struct posix_acl**,struct posix_acl**) ;
 int posix_acl_equiv_mode (struct posix_acl*,int *) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_to_xattr (int *,struct posix_acl*,void*,size_t) ;
 size_t posix_acl_xattr_size (int ) ;
 size_t strlen (int ) ;

int ceph_pre_init_acls(struct inode *dir, umode_t *mode,
         struct ceph_acl_sec_ctx *as_ctx)
{
 struct posix_acl *acl, *default_acl;
 size_t val_size1 = 0, val_size2 = 0;
 struct ceph_pagelist *pagelist = ((void*)0);
 void *tmp_buf = ((void*)0);
 int err;

 err = posix_acl_create(dir, mode, &default_acl, &acl);
 if (err)
  return err;

 if (acl) {
  err = posix_acl_equiv_mode(acl, mode);
  if (err < 0)
   goto out_err;
  if (err == 0) {
   posix_acl_release(acl);
   acl = ((void*)0);
  }
 }

 if (!default_acl && !acl)
  return 0;

 if (acl)
  val_size1 = posix_acl_xattr_size(acl->a_count);
 if (default_acl)
  val_size2 = posix_acl_xattr_size(default_acl->a_count);

 err = -ENOMEM;
 tmp_buf = kmalloc(max(val_size1, val_size2), GFP_KERNEL);
 if (!tmp_buf)
  goto out_err;
 pagelist = ceph_pagelist_alloc(GFP_KERNEL);
 if (!pagelist)
  goto out_err;

 err = ceph_pagelist_reserve(pagelist, PAGE_SIZE);
 if (err)
  goto out_err;

 ceph_pagelist_encode_32(pagelist, acl && default_acl ? 2 : 1);

 if (acl) {
  size_t len = strlen(XATTR_NAME_POSIX_ACL_ACCESS);
  err = ceph_pagelist_reserve(pagelist, len + val_size1 + 8);
  if (err)
   goto out_err;
  ceph_pagelist_encode_string(pagelist, XATTR_NAME_POSIX_ACL_ACCESS,
         len);
  err = posix_acl_to_xattr(&init_user_ns, acl,
      tmp_buf, val_size1);
  if (err < 0)
   goto out_err;
  ceph_pagelist_encode_32(pagelist, val_size1);
  ceph_pagelist_append(pagelist, tmp_buf, val_size1);
 }
 if (default_acl) {
  size_t len = strlen(XATTR_NAME_POSIX_ACL_DEFAULT);
  err = ceph_pagelist_reserve(pagelist, len + val_size2 + 8);
  if (err)
   goto out_err;
  err = ceph_pagelist_encode_string(pagelist,
        XATTR_NAME_POSIX_ACL_DEFAULT, len);
  err = posix_acl_to_xattr(&init_user_ns, default_acl,
      tmp_buf, val_size2);
  if (err < 0)
   goto out_err;
  ceph_pagelist_encode_32(pagelist, val_size2);
  ceph_pagelist_append(pagelist, tmp_buf, val_size2);
 }

 kfree(tmp_buf);

 as_ctx->acl = acl;
 as_ctx->default_acl = default_acl;
 as_ctx->pagelist = pagelist;
 return 0;

out_err:
 posix_acl_release(acl);
 posix_acl_release(default_acl);
 kfree(tmp_buf);
 if (pagelist)
  ceph_pagelist_release(pagelist);
 return err;
}
