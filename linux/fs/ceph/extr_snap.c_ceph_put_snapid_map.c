
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_snapid_map {int lru; int last_used; int node; int ref; } ;
struct ceph_mds_client {int snapid_map_lock; int snapid_map_lru; } ;


 int RB_EMPTY_NODE (int *) ;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int jiffies ;
 int kfree (struct ceph_snapid_map*) ;
 int list_add_tail (int *,int *) ;
 int spin_unlock (int *) ;

void ceph_put_snapid_map(struct ceph_mds_client* mdsc,
    struct ceph_snapid_map *sm)
{
 if (!sm)
  return;
 if (atomic_dec_and_lock(&sm->ref, &mdsc->snapid_map_lock)) {
  if (!RB_EMPTY_NODE(&sm->node)) {
   sm->last_used = jiffies;
   list_add_tail(&sm->lru, &mdsc->snapid_map_lru);
   spin_unlock(&mdsc->snapid_map_lock);
  } else {


   spin_unlock(&mdsc->snapid_map_lock);
   kfree(sm);
  }
 }
}
