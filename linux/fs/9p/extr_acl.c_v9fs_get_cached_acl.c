
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int BUG_ON (int ) ;
 struct posix_acl* get_cached_acl (struct inode*,int) ;
 int is_uncached_acl (struct posix_acl*) ;

__attribute__((used)) static struct posix_acl *v9fs_get_cached_acl(struct inode *inode, int type)
{
 struct posix_acl *acl;




 acl = get_cached_acl(inode, type);
 BUG_ON(is_uncached_acl(acl));
 return acl;
}
