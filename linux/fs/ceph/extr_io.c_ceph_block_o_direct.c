
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rwsem; } ;
struct ceph_inode_info {int i_ceph_flags; int i_ceph_lock; } ;


 int CEPH_I_ODIRECT ;
 int READ_ONCE (int) ;
 int inode_dio_wait (struct inode*) ;
 int lockdep_assert_held_write (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ceph_block_o_direct(struct ceph_inode_info *ci, struct inode *inode)
{
 lockdep_assert_held_write(&inode->i_rwsem);

 if (READ_ONCE(ci->i_ceph_flags) & CEPH_I_ODIRECT) {
  spin_lock(&ci->i_ceph_lock);
  ci->i_ceph_flags &= ~CEPH_I_ODIRECT;
  spin_unlock(&ci->i_ceph_lock);
  inode_dio_wait(inode);
 }
}
