
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_queue_stats {size_t map_capacity; int link_map_cache; int wait_link_id_empty; int lock; struct cw1200_common* priv; int skb_dtor; } ;
struct cw1200_common {int dummy; } ;
typedef int cw1200_queue_skb_dtor_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 int kcalloc (size_t,int,int ) ;
 int memset (struct cw1200_queue_stats*,int ,int) ;
 int spin_lock_init (int *) ;

int cw1200_queue_stats_init(struct cw1200_queue_stats *stats,
       size_t map_capacity,
       cw1200_queue_skb_dtor_t skb_dtor,
       struct cw1200_common *priv)
{
 memset(stats, 0, sizeof(*stats));
 stats->map_capacity = map_capacity;
 stats->skb_dtor = skb_dtor;
 stats->priv = priv;
 spin_lock_init(&stats->lock);
 init_waitqueue_head(&stats->wait_link_id_empty);

 stats->link_map_cache = kcalloc(map_capacity, sizeof(int),
     GFP_KERNEL);
 if (!stats->link_map_cache)
  return -ENOMEM;

 return 0;
}
