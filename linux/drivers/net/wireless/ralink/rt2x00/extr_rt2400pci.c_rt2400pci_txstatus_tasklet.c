
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int irqmask_lock; int flags; } ;


 int CSR8 ;
 int CSR8_TXDONE_ATIMRING ;
 int CSR8_TXDONE_PRIORING ;
 int CSR8_TXDONE_TXRING ;
 int DEVICE_STATE_ENABLED_RADIO ;
 int QID_AC_VI ;
 int QID_AC_VO ;
 int QID_ATIM ;
 int rt2400pci_txdone (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (int *,int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rt2400pci_txstatus_tasklet(unsigned long data)
{
 struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;
 u32 reg;




 rt2400pci_txdone(rt2x00dev, QID_ATIM);
 rt2400pci_txdone(rt2x00dev, QID_AC_VO);
 rt2400pci_txdone(rt2x00dev, QID_AC_VI);




 if (test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags)) {
  spin_lock_irq(&rt2x00dev->irqmask_lock);

  reg = rt2x00mmio_register_read(rt2x00dev, CSR8);
  rt2x00_set_field32(&reg, CSR8_TXDONE_TXRING, 0);
  rt2x00_set_field32(&reg, CSR8_TXDONE_ATIMRING, 0);
  rt2x00_set_field32(&reg, CSR8_TXDONE_PRIORING, 0);
  rt2x00mmio_register_write(rt2x00dev, CSR8, reg);

  spin_unlock_irq(&rt2x00dev->irqmask_lock);
 }
}
