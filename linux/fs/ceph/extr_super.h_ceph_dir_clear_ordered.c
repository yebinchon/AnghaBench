
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int __ceph_dir_clear_ordered (int ) ;
 int ceph_inode (struct inode*) ;

__attribute__((used)) static inline void ceph_dir_clear_ordered(struct inode *inode)
{
 __ceph_dir_clear_ordered(ceph_inode(inode));
}
