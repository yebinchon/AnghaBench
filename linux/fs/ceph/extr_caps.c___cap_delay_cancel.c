
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int cap_delay_lock; } ;
struct ceph_inode_info {int i_cap_delay_list; int vfs_inode; } ;


 int dout (char*,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __cap_delay_cancel(struct ceph_mds_client *mdsc,
          struct ceph_inode_info *ci)
{
 dout("__cap_delay_cancel %p\n", &ci->vfs_inode);
 if (list_empty(&ci->i_cap_delay_list))
  return;
 spin_lock(&mdsc->cap_delay_lock);
 list_del_init(&ci->i_cap_delay_list);
 spin_unlock(&mdsc->cap_delay_lock);
}
