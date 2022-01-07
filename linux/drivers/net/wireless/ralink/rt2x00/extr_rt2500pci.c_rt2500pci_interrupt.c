
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int irqmask_lock; int txstatus_tasklet; int rxdone_tasklet; int tbtt_tasklet; int flags; } ;
typedef int irqreturn_t ;


 int CSR7 ;
 int CSR7_RXDONE ;
 int CSR7_TBCN_EXPIRE ;
 int CSR7_TXDONE_ATIMRING ;
 int CSR7_TXDONE_PRIORING ;
 int CSR7_TXDONE_TXRING ;
 int CSR8 ;
 int CSR8_TXDONE_ATIMRING ;
 int CSR8_TXDONE_PRIORING ;
 int CSR8_TXDONE_TXRING ;
 int DEVICE_STATE_ENABLED_RADIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ rt2x00_get_field32 (int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_hi_schedule (int *) ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t rt2500pci_interrupt(int irq, void *dev_instance)
{
 struct rt2x00_dev *rt2x00dev = dev_instance;
 u32 reg, mask;





 reg = rt2x00mmio_register_read(rt2x00dev, CSR7);
 rt2x00mmio_register_write(rt2x00dev, CSR7, reg);

 if (!reg)
  return IRQ_NONE;

 if (!test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  return IRQ_HANDLED;

 mask = reg;




 if (rt2x00_get_field32(reg, CSR7_TBCN_EXPIRE))
  tasklet_hi_schedule(&rt2x00dev->tbtt_tasklet);

 if (rt2x00_get_field32(reg, CSR7_RXDONE))
  tasklet_schedule(&rt2x00dev->rxdone_tasklet);

 if (rt2x00_get_field32(reg, CSR7_TXDONE_ATIMRING) ||
     rt2x00_get_field32(reg, CSR7_TXDONE_PRIORING) ||
     rt2x00_get_field32(reg, CSR7_TXDONE_TXRING)) {
  tasklet_schedule(&rt2x00dev->txstatus_tasklet);



  rt2x00_set_field32(&mask, CSR8_TXDONE_TXRING, 1);
  rt2x00_set_field32(&mask, CSR8_TXDONE_ATIMRING, 1);
  rt2x00_set_field32(&mask, CSR8_TXDONE_PRIORING, 1);
 }





 spin_lock(&rt2x00dev->irqmask_lock);

 reg = rt2x00mmio_register_read(rt2x00dev, CSR8);
 reg |= mask;
 rt2x00mmio_register_write(rt2x00dev, CSR8, reg);

 spin_unlock(&rt2x00dev->irqmask_lock);

 return IRQ_HANDLED;
}
