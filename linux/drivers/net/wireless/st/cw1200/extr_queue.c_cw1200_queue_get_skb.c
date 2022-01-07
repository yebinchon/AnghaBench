
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cw1200_txpriv {int dummy; } ;
struct cw1200_queue_item {size_t generation; struct cw1200_txpriv txpriv; struct sk_buff* skb; } ;
struct cw1200_queue {size_t queue_id; size_t generation; int lock; scalar_t__ capacity; struct cw1200_queue_item* pool; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOENT ;
 int WARN_ON (int) ;
 int cw1200_queue_parse_id (int ,size_t*,size_t*,size_t*,size_t*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cw1200_queue_get_skb(struct cw1200_queue *queue, u32 packet_id,
    struct sk_buff **skb,
    const struct cw1200_txpriv **txpriv)
{
 int ret = 0;
 u8 queue_generation, queue_id, item_generation, item_id;
 struct cw1200_queue_item *item;
 cw1200_queue_parse_id(packet_id, &queue_generation, &queue_id,
         &item_generation, &item_id);

 item = &queue->pool[item_id];

 spin_lock_bh(&queue->lock);
 BUG_ON(queue_id != queue->queue_id);
 if (queue_generation != queue->generation) {
  ret = -ENOENT;
 } else if (item_id >= (unsigned) queue->capacity) {
  WARN_ON(1);
  ret = -EINVAL;
 } else if (item->generation != item_generation) {
  WARN_ON(1);
  ret = -ENOENT;
 } else {
  *skb = item->skb;
  *txpriv = &item->txpriv;
 }
 spin_unlock_bh(&queue->lock);
 return ret;
}
