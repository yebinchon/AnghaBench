
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct ceph_acl_sec_ctx {int dummy; } ;



__attribute__((used)) static inline int ceph_pre_init_acls(struct inode *dir, umode_t *mode,
         struct ceph_acl_sec_ctx *as_ctx)
{
 return 0;
}
