
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_ceph_lock; } ;


 int __ceph_caps_issued (struct ceph_inode_info*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int ceph_caps_issued(struct ceph_inode_info *ci)
{
 int issued;
 spin_lock(&ci->i_ceph_lock);
 issued = __ceph_caps_issued(ci, ((void*)0));
 spin_unlock(&ci->i_ceph_lock);
 return issued;
}
