
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mt7601u_dev {int tx_lock; int tx_skb_done; int stat_work; int stat_wq; int state; } ;


 int MT7601U_STATE_MORE_STATS ;
 int MT7601U_STATE_READING_STATS ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int msecs_to_jiffies (int) ;
 int mt7601u_tx_status (struct mt7601u_dev*,struct sk_buff*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int skb_queue_splice_init (int *,struct sk_buff_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void mt7601u_tx_tasklet(unsigned long data)
{
 struct mt7601u_dev *dev = (struct mt7601u_dev *) data;
 struct sk_buff_head skbs;
 unsigned long flags;

 __skb_queue_head_init(&skbs);

 spin_lock_irqsave(&dev->tx_lock, flags);

 set_bit(MT7601U_STATE_MORE_STATS, &dev->state);
 if (!test_and_set_bit(MT7601U_STATE_READING_STATS, &dev->state))
  queue_delayed_work(dev->stat_wq, &dev->stat_work,
       msecs_to_jiffies(10));

 skb_queue_splice_init(&dev->tx_skb_done, &skbs);

 spin_unlock_irqrestore(&dev->tx_lock, flags);

 while (!skb_queue_empty(&skbs)) {
  struct sk_buff *skb = __skb_dequeue(&skbs);

  mt7601u_tx_status(dev, skb);
 }
}
