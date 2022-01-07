
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;


 int posix_acl_release (struct posix_acl*) ;

void v9fs_put_acl(struct posix_acl *dacl,
    struct posix_acl *acl)
{
 posix_acl_release(dacl);
 posix_acl_release(acl);
}
