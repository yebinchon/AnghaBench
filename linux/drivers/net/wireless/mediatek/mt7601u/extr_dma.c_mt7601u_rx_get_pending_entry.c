
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_rx_queue {size_t start; int entries; int pending; struct mt7601u_dma_buf_rx* e; } ;
struct mt7601u_dma_buf_rx {int dummy; } ;
struct mt7601u_dev {int rx_lock; struct mt7601u_rx_queue rx_q; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct mt7601u_dma_buf_rx *
mt7601u_rx_get_pending_entry(struct mt7601u_dev *dev)
{
 struct mt7601u_rx_queue *q = &dev->rx_q;
 struct mt7601u_dma_buf_rx *buf = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&dev->rx_lock, flags);

 if (!q->pending)
  goto out;

 buf = &q->e[q->start];
 q->pending--;
 q->start = (q->start + 1) % q->entries;
out:
 spin_unlock_irqrestore(&dev->rx_lock, flags);

 return buf;
}
