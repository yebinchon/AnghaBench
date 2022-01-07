
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int irqmask_lock; int txstatus_fifo; } ;


 int TX_STA_FIFO ;
 int TX_STA_FIFO_VALID ;
 int kfifo_is_full (int *) ;
 int kfifo_put (int *,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rt2800mmio_fetch_txstatus(struct rt2x00_dev *rt2x00dev)
{
 u32 status;
 unsigned long flags;
 spin_lock_irqsave(&rt2x00dev->irqmask_lock, flags);

 while (!kfifo_is_full(&rt2x00dev->txstatus_fifo)) {
  status = rt2x00mmio_register_read(rt2x00dev, TX_STA_FIFO);
  if (!rt2x00_get_field32(status, TX_STA_FIFO_VALID))
   break;

  kfifo_put(&rt2x00dev->txstatus_fifo, status);
 }

 spin_unlock_irqrestore(&rt2x00dev->irqmask_lock, flags);
}
