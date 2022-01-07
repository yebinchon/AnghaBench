
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rwsem; } ;
struct ceph_inode_info {int i_ceph_flags; } ;


 int CEPH_I_ODIRECT ;
 int READ_ONCE (int ) ;
 int ceph_block_buffered (struct ceph_inode_info*,struct inode*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int downgrade_write (int *) ;
 int up_read (int *) ;

void
ceph_start_io_direct(struct inode *inode)
{
 struct ceph_inode_info *ci = ceph_inode(inode);


 down_read(&inode->i_rwsem);
 if (READ_ONCE(ci->i_ceph_flags) & CEPH_I_ODIRECT)
  return;
 up_read(&inode->i_rwsem);

 down_write(&inode->i_rwsem);
 ceph_block_buffered(ci, inode);
 downgrade_write(&inode->i_rwsem);
}
