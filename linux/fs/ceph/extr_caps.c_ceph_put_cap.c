
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {scalar_t__ caps_total_count; scalar_t__ caps_use_count; scalar_t__ caps_reserve_count; scalar_t__ caps_avail_count; scalar_t__ caps_min_count; int caps_list_lock; int caps_list; } ;
struct ceph_cap {int caps_item; } ;


 int BUG_ON (int) ;
 int ceph_cap_cachep ;
 int dout (char*,struct ceph_cap*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int kmem_cache_free (int ,struct ceph_cap*) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ceph_put_cap(struct ceph_mds_client *mdsc, struct ceph_cap *cap)
{
 spin_lock(&mdsc->caps_list_lock);
 dout("put_cap %p %d = %d used + %d resv + %d avail\n",
      cap, mdsc->caps_total_count, mdsc->caps_use_count,
      mdsc->caps_reserve_count, mdsc->caps_avail_count);
 mdsc->caps_use_count--;




 if (mdsc->caps_avail_count >= mdsc->caps_reserve_count +
          mdsc->caps_min_count) {
  mdsc->caps_total_count--;
  kmem_cache_free(ceph_cap_cachep, cap);
 } else {
  mdsc->caps_avail_count++;
  list_add(&cap->caps_item, &mdsc->caps_list);
 }

 BUG_ON(mdsc->caps_total_count != mdsc->caps_use_count +
        mdsc->caps_reserve_count + mdsc->caps_avail_count);
 spin_unlock(&mdsc->caps_list_lock);
}
