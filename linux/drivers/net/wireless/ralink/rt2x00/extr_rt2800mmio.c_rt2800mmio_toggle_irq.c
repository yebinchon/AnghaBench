
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rt2x00_dev {int pretbtt_tasklet; int tbtt_tasklet; int autowake_tasklet; int rxdone_tasklet; int txstatus_tasklet; int irqmask_lock; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int INT_MASK_CSR ;
 int INT_MASK_CSR_AUTO_WAKEUP ;
 int INT_MASK_CSR_PRE_TBTT ;
 int INT_MASK_CSR_RX_DONE ;
 int INT_MASK_CSR_TBTT ;
 int INT_MASK_CSR_TX_FIFO_STATUS ;
 int INT_SOURCE_CSR ;
 int STATE_RADIO_IRQ_OFF ;
 int STATE_RADIO_IRQ_ON ;
 int rt2x00_set_field32 (scalar_t__*,int ,int) ;
 scalar_t__ rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;

void rt2800mmio_toggle_irq(struct rt2x00_dev *rt2x00dev,
      enum dev_state state)
{
 u32 reg;
 unsigned long flags;





 if (state == STATE_RADIO_IRQ_ON) {
  reg = rt2x00mmio_register_read(rt2x00dev, INT_SOURCE_CSR);
  rt2x00mmio_register_write(rt2x00dev, INT_SOURCE_CSR, reg);
 }

 spin_lock_irqsave(&rt2x00dev->irqmask_lock, flags);
 reg = 0;
 if (state == STATE_RADIO_IRQ_ON) {
  rt2x00_set_field32(&reg, INT_MASK_CSR_RX_DONE, 1);
  rt2x00_set_field32(&reg, INT_MASK_CSR_TBTT, 1);
  rt2x00_set_field32(&reg, INT_MASK_CSR_PRE_TBTT, 1);
  rt2x00_set_field32(&reg, INT_MASK_CSR_TX_FIFO_STATUS, 1);
  rt2x00_set_field32(&reg, INT_MASK_CSR_AUTO_WAKEUP, 1);
 }
 rt2x00mmio_register_write(rt2x00dev, INT_MASK_CSR, reg);
 spin_unlock_irqrestore(&rt2x00dev->irqmask_lock, flags);

 if (state == STATE_RADIO_IRQ_OFF) {



  tasklet_kill(&rt2x00dev->txstatus_tasklet);
  tasklet_kill(&rt2x00dev->rxdone_tasklet);
  tasklet_kill(&rt2x00dev->autowake_tasklet);
  tasklet_kill(&rt2x00dev->tbtt_tasklet);
  tasklet_kill(&rt2x00dev->pretbtt_tasklet);
 }
}
