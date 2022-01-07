
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int MAC_CSR13 ;
 int MAC_CSR13_VAL5 ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt61pci_rfkill_poll(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;

 reg = rt2x00mmio_register_read(rt2x00dev, MAC_CSR13);
 return rt2x00_get_field32(reg, MAC_CSR13_VAL5);
}
