
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gntdev_priv {int lock; } ;
struct TYPE_2__ {int flags; int event; } ;
struct gntdev_grant_map {int count; scalar_t__ pages; int next; TYPE_1__ notify; int users; } ;


 int UNMAP_NOTIFY_SEND_EVENT ;
 int atomic_sub (int ,int *) ;
 int evtchn_put (int ) ;
 int gntdev_free_map (struct gntdev_grant_map*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notify_remote_via_evtchn (int ) ;
 int pages_mapped ;
 scalar_t__ populate_freeable_maps ;
 int refcount_dec_and_test (int *) ;
 int unmap_grant_pages (struct gntdev_grant_map*,int ,int ) ;
 int use_ptemod ;

void gntdev_put_map(struct gntdev_priv *priv, struct gntdev_grant_map *map)
{
 if (!map)
  return;

 if (!refcount_dec_and_test(&map->users))
  return;

 atomic_sub(map->count, &pages_mapped);

 if (map->notify.flags & UNMAP_NOTIFY_SEND_EVENT) {
  notify_remote_via_evtchn(map->notify.event);
  evtchn_put(map->notify.event);
 }

 if (populate_freeable_maps && priv) {
  mutex_lock(&priv->lock);
  list_del(&map->next);
  mutex_unlock(&priv->lock);
 }

 if (map->pages && !use_ptemod)
  unmap_grant_pages(map, 0, map->count);
 gntdev_free_map(map);
}
