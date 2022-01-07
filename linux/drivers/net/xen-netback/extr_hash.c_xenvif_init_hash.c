
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; int lock; int count; } ;
struct TYPE_4__ {TYPE_1__ cache; } ;
struct xenvif {TYPE_2__ hash; } ;


 int BUG_ON (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ xenvif_hash_cache_size ;

void xenvif_init_hash(struct xenvif *vif)
{
 if (xenvif_hash_cache_size == 0)
  return;

 BUG_ON(vif->hash.cache.count);

 spin_lock_init(&vif->hash.cache.lock);
 INIT_LIST_HEAD(&vif->hash.cache.list);
}
