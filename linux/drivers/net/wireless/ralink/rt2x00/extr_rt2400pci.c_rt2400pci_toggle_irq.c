
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int tbtt_tasklet; int rxdone_tasklet; int txstatus_tasklet; int irqmask_lock; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int CSR7 ;
 int CSR8 ;
 int CSR8_RXDONE ;
 int CSR8_TBCN_EXPIRE ;
 int CSR8_TXDONE_ATIMRING ;
 int CSR8_TXDONE_PRIORING ;
 int CSR8_TXDONE_TXRING ;
 int STATE_RADIO_IRQ_OFF ;
 int STATE_RADIO_IRQ_ON ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void rt2400pci_toggle_irq(struct rt2x00_dev *rt2x00dev,
     enum dev_state state)
{
 int mask = (state == STATE_RADIO_IRQ_OFF);
 u32 reg;
 unsigned long flags;





 if (state == STATE_RADIO_IRQ_ON) {
  reg = rt2x00mmio_register_read(rt2x00dev, CSR7);
  rt2x00mmio_register_write(rt2x00dev, CSR7, reg);
 }





 spin_lock_irqsave(&rt2x00dev->irqmask_lock, flags);

 reg = rt2x00mmio_register_read(rt2x00dev, CSR8);
 rt2x00_set_field32(&reg, CSR8_TBCN_EXPIRE, mask);
 rt2x00_set_field32(&reg, CSR8_TXDONE_TXRING, mask);
 rt2x00_set_field32(&reg, CSR8_TXDONE_ATIMRING, mask);
 rt2x00_set_field32(&reg, CSR8_TXDONE_PRIORING, mask);
 rt2x00_set_field32(&reg, CSR8_RXDONE, mask);
 rt2x00mmio_register_write(rt2x00dev, CSR8, reg);

 spin_unlock_irqrestore(&rt2x00dev->irqmask_lock, flags);

 if (state == STATE_RADIO_IRQ_OFF) {




  tasklet_kill(&rt2x00dev->txstatus_tasklet);
  tasklet_kill(&rt2x00dev->rxdone_tasklet);
  tasklet_kill(&rt2x00dev->tbtt_tasklet);
 }
}
