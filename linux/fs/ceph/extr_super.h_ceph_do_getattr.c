
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int __ceph_do_getattr (struct inode*,int *,int,int) ;

__attribute__((used)) static inline int ceph_do_getattr(struct inode *inode, int mask, bool force)
{
 return __ceph_do_getattr(inode, ((void*)0), mask, force);
}
