
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;



__attribute__((used)) static inline int v9fs_acl_mode(struct inode *dir, umode_t *modep,
    struct posix_acl **dpacl,
    struct posix_acl **pacl)
{
 return 0;
}
