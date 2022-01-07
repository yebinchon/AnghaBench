
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int EIO ;
 int RX_CNTL_CSR ;
 int RX_CNTL_CSR_ENABLE_RX_DMA ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 scalar_t__ rt61pci_init_bbp (struct rt2x00_dev*) ;
 scalar_t__ rt61pci_init_queues (struct rt2x00_dev*) ;
 scalar_t__ rt61pci_init_registers (struct rt2x00_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rt61pci_enable_radio(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;




 if (unlikely(rt61pci_init_queues(rt2x00dev) ||
       rt61pci_init_registers(rt2x00dev) ||
       rt61pci_init_bbp(rt2x00dev)))
  return -EIO;




 reg = rt2x00mmio_register_read(rt2x00dev, RX_CNTL_CSR);
 rt2x00_set_field32(&reg, RX_CNTL_CSR_ENABLE_RX_DMA, 1);
 rt2x00mmio_register_write(rt2x00dev, RX_CNTL_CSR, reg);

 return 0;
}
