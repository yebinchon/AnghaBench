
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int irqmask_lock; int autowake_tasklet; int tbtt_tasklet; int txstatus_tasklet; int rxdone_tasklet; int flags; } ;
typedef int irqreturn_t ;


 int DEVICE_STATE_ENABLED_RADIO ;
 int INT_MASK_CSR ;
 int INT_SOURCE_CSR ;
 int INT_SOURCE_CSR_BEACON_DONE ;
 int INT_SOURCE_CSR_RXDONE ;
 int INT_SOURCE_CSR_TXDONE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MCU_INT_MASK_CSR ;
 int MCU_INT_SOURCE_CSR ;
 int MCU_INT_SOURCE_CSR_TWAKEUP ;
 scalar_t__ rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_hi_schedule (int *) ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t rt61pci_interrupt(int irq, void *dev_instance)
{
 struct rt2x00_dev *rt2x00dev = dev_instance;
 u32 reg_mcu, mask_mcu;
 u32 reg, mask;





 reg_mcu = rt2x00mmio_register_read(rt2x00dev, MCU_INT_SOURCE_CSR);
 rt2x00mmio_register_write(rt2x00dev, MCU_INT_SOURCE_CSR, reg_mcu);

 reg = rt2x00mmio_register_read(rt2x00dev, INT_SOURCE_CSR);
 rt2x00mmio_register_write(rt2x00dev, INT_SOURCE_CSR, reg);

 if (!reg && !reg_mcu)
  return IRQ_NONE;

 if (!test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  return IRQ_HANDLED;




 if (rt2x00_get_field32(reg, INT_SOURCE_CSR_RXDONE))
  tasklet_schedule(&rt2x00dev->rxdone_tasklet);

 if (rt2x00_get_field32(reg, INT_SOURCE_CSR_TXDONE))
  tasklet_schedule(&rt2x00dev->txstatus_tasklet);

 if (rt2x00_get_field32(reg, INT_SOURCE_CSR_BEACON_DONE))
  tasklet_hi_schedule(&rt2x00dev->tbtt_tasklet);

 if (rt2x00_get_field32(reg_mcu, MCU_INT_SOURCE_CSR_TWAKEUP))
  tasklet_schedule(&rt2x00dev->autowake_tasklet);






 mask = reg;
 mask_mcu = reg_mcu;





 spin_lock(&rt2x00dev->irqmask_lock);

 reg = rt2x00mmio_register_read(rt2x00dev, INT_MASK_CSR);
 reg |= mask;
 rt2x00mmio_register_write(rt2x00dev, INT_MASK_CSR, reg);

 reg = rt2x00mmio_register_read(rt2x00dev, MCU_INT_MASK_CSR);
 reg |= mask_mcu;
 rt2x00mmio_register_write(rt2x00dev, MCU_INT_MASK_CSR, reg);

 spin_unlock(&rt2x00dev->irqmask_lock);

 return IRQ_HANDLED;
}
