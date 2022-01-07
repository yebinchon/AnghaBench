
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rwsem; } ;


 int ceph_block_o_direct (int ,struct inode*) ;
 int ceph_inode (struct inode*) ;
 int down_write (int *) ;

void
ceph_start_io_write(struct inode *inode)
{
 down_write(&inode->i_rwsem);
 ceph_block_o_direct(ceph_inode(inode), inode);
}
