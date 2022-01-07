
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reada_zone {scalar_t__ elems; int refcnt; int lock; TYPE_1__* device; } ;
struct reada_extent {unsigned long logical; int nzones; struct reada_zone** zones; scalar_t__ refcnt; } ;
struct btrfs_fs_info {int reada_lock; int reada_tree; } ;
struct TYPE_2__ {int reada_extents; } ;


 unsigned long PAGE_SHIFT ;
 int kfree (struct reada_extent*) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int radix_tree_delete (int *,unsigned long) ;
 int reada_zone_release ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void reada_extent_put(struct btrfs_fs_info *fs_info,
        struct reada_extent *re)
{
 int i;
 unsigned long index = re->logical >> PAGE_SHIFT;

 spin_lock(&fs_info->reada_lock);
 if (--re->refcnt) {
  spin_unlock(&fs_info->reada_lock);
  return;
 }

 radix_tree_delete(&fs_info->reada_tree, index);
 for (i = 0; i < re->nzones; ++i) {
  struct reada_zone *zone = re->zones[i];

  radix_tree_delete(&zone->device->reada_extents, index);
 }

 spin_unlock(&fs_info->reada_lock);

 for (i = 0; i < re->nzones; ++i) {
  struct reada_zone *zone = re->zones[i];

  kref_get(&zone->refcnt);
  spin_lock(&zone->lock);
  --zone->elems;
  if (zone->elems == 0) {


   kref_put(&zone->refcnt, reada_zone_release);
  }
  spin_unlock(&zone->lock);

  spin_lock(&fs_info->reada_lock);
  kref_put(&zone->refcnt, reada_zone_release);
  spin_unlock(&fs_info->reada_lock);
 }

 kfree(re);
}
