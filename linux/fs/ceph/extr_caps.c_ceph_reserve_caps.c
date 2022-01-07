
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_session {int s_nr_caps; int s_mutex; } ;
struct ceph_mds_client {int caps_avail_count; int caps_reserve_count; int caps_total_count; int caps_use_count; int max_sessions; int caps_list_lock; int caps_list; int mutex; } ;
struct ceph_cap_reservation {int count; scalar_t__ used; } ;
struct ceph_cap {int caps_item; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int LIST_HEAD (int ) ;
 struct ceph_mds_session* __ceph_lookup_mds_session (struct ceph_mds_client*,int) ;
 int __ceph_unreserve_caps (struct ceph_mds_client*,int) ;
 int ceph_cap_cachep ;
 int ceph_put_mds_session (struct ceph_mds_session*) ;
 int ceph_trim_caps (struct ceph_mds_client*,struct ceph_mds_session*,int) ;
 int dout (char*,struct ceph_cap_reservation*,int,...) ;
 struct ceph_cap* kmem_cache_alloc (int ,int ) ;
 int list_add (int *,int *) ;
 int list_splice (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int newcaps ;
 int pr_warn (char*,struct ceph_cap_reservation*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ceph_reserve_caps(struct ceph_mds_client *mdsc,
        struct ceph_cap_reservation *ctx, int need)
{
 int i, j;
 struct ceph_cap *cap;
 int have;
 int alloc = 0;
 int max_caps;
 int err = 0;
 bool trimmed = 0;
 struct ceph_mds_session *s;
 LIST_HEAD(newcaps);

 dout("reserve caps ctx=%p need=%d\n", ctx, need);


 spin_lock(&mdsc->caps_list_lock);
 if (mdsc->caps_avail_count >= need)
  have = need;
 else
  have = mdsc->caps_avail_count;
 mdsc->caps_avail_count -= have;
 mdsc->caps_reserve_count += have;
 BUG_ON(mdsc->caps_total_count != mdsc->caps_use_count +
      mdsc->caps_reserve_count +
      mdsc->caps_avail_count);
 spin_unlock(&mdsc->caps_list_lock);

 for (i = have; i < need; ) {
  cap = kmem_cache_alloc(ceph_cap_cachep, GFP_NOFS);
  if (cap) {
   list_add(&cap->caps_item, &newcaps);
   alloc++;
   i++;
   continue;
  }

  if (!trimmed) {
   for (j = 0; j < mdsc->max_sessions; j++) {
    s = __ceph_lookup_mds_session(mdsc, j);
    if (!s)
     continue;
    mutex_unlock(&mdsc->mutex);

    mutex_lock(&s->s_mutex);
    max_caps = s->s_nr_caps - (need - i);
    ceph_trim_caps(mdsc, s, max_caps);
    mutex_unlock(&s->s_mutex);

    ceph_put_mds_session(s);
    mutex_lock(&mdsc->mutex);
   }
   trimmed = 1;

   spin_lock(&mdsc->caps_list_lock);
   if (mdsc->caps_avail_count) {
    int more_have;
    if (mdsc->caps_avail_count >= need - i)
     more_have = need - i;
    else
     more_have = mdsc->caps_avail_count;

    i += more_have;
    have += more_have;
    mdsc->caps_avail_count -= more_have;
    mdsc->caps_reserve_count += more_have;

   }
   spin_unlock(&mdsc->caps_list_lock);

   continue;
  }

  pr_warn("reserve caps ctx=%p ENOMEM need=%d got=%d\n",
   ctx, need, have + alloc);
  err = -ENOMEM;
  break;
 }

 if (!err) {
  BUG_ON(have + alloc != need);
  ctx->count = need;
  ctx->used = 0;
 }

 spin_lock(&mdsc->caps_list_lock);
 mdsc->caps_total_count += alloc;
 mdsc->caps_reserve_count += alloc;
 list_splice(&newcaps, &mdsc->caps_list);

 BUG_ON(mdsc->caps_total_count != mdsc->caps_use_count +
      mdsc->caps_reserve_count +
      mdsc->caps_avail_count);

 if (err)
  __ceph_unreserve_caps(mdsc, have + alloc);

 spin_unlock(&mdsc->caps_list_lock);

 dout("reserve caps ctx=%p %d = %d used + %d resv + %d avail\n",
      ctx, mdsc->caps_total_count, mdsc->caps_use_count,
      mdsc->caps_reserve_count, mdsc->caps_avail_count);
 return err;
}
