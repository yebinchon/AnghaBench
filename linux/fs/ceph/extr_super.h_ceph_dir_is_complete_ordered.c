
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int __ceph_dir_is_complete_ordered (int ) ;
 int ceph_inode (struct inode*) ;
 int smp_rmb () ;

__attribute__((used)) static inline bool ceph_dir_is_complete_ordered(struct inode *inode)
{
 bool ret = __ceph_dir_is_complete_ordered(ceph_inode(inode));
 smp_rmb();
 return ret;
}
