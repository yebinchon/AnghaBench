
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int capable (int ) ;

__attribute__((used)) static bool erofs_xattr_trusted_list(struct dentry *dentry)
{
 return capable(CAP_SYS_ADMIN);
}
