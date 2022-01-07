
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_ceph_flags; int i_ceph_lock; } ;


 int CEPH_I_ERROR_WRITE ;
 int READ_ONCE (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void ceph_clear_error_write(struct ceph_inode_info *ci)
{
 if (READ_ONCE(ci->i_ceph_flags) & CEPH_I_ERROR_WRITE) {
  spin_lock(&ci->i_ceph_lock);
  ci->i_ceph_flags &= ~CEPH_I_ERROR_WRITE;
  spin_unlock(&ci->i_ceph_lock);
 }
}
