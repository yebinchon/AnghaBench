
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {scalar_t__ caps_use_max; scalar_t__ caps_use_count; int caps_list_lock; } ;
struct ceph_cap_reservation {int used; scalar_t__ count; } ;


 int __ceph_unreserve_caps (struct ceph_mds_client*,scalar_t__) ;
 int ceph_reclaim_caps_nr (struct ceph_mds_client*,int ) ;
 int dout (char*,struct ceph_cap_reservation*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ceph_unreserve_caps(struct ceph_mds_client *mdsc,
    struct ceph_cap_reservation *ctx)
{
 bool reclaim = 0;
 if (!ctx->count)
  return;

 dout("unreserve caps ctx=%p count=%d\n", ctx, ctx->count);
 spin_lock(&mdsc->caps_list_lock);
 __ceph_unreserve_caps(mdsc, ctx->count);
 ctx->count = 0;

 if (mdsc->caps_use_max > 0 &&
     mdsc->caps_use_count > mdsc->caps_use_max)
  reclaim = 1;
 spin_unlock(&mdsc->caps_list_lock);

 if (reclaim)
  ceph_reclaim_caps_nr(mdsc, ctx->used);
}
