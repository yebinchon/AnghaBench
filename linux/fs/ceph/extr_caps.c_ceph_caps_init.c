
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int caps_list_lock; int caps_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void ceph_caps_init(struct ceph_mds_client *mdsc)
{
 INIT_LIST_HEAD(&mdsc->caps_list);
 spin_lock_init(&mdsc->caps_list_lock);
}
