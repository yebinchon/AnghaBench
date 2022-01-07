
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int GPIOCSR ;
 int GPIOCSR_VAL0 ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt2500pci_rfkill_poll(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;

 reg = rt2x00mmio_register_read(rt2x00dev, GPIOCSR);
 return rt2x00_get_field32(reg, GPIOCSR_VAL0);
}
