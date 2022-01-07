
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yfs_acl {struct yfs_acl* vol_acl; struct yfs_acl* acl; } ;


 int kfree (struct yfs_acl*) ;

void yfs_free_opaque_acl(struct yfs_acl *yacl)
{
 if (yacl) {
  kfree(yacl->acl);
  kfree(yacl->vol_acl);
  kfree(yacl);
 }
}
