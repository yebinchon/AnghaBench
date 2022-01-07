
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eisa_device {scalar_t__ base_addr; } ;


 unsigned short inw (scalar_t__) ;

__attribute__((used)) static unsigned int advansys_eisa_irq_no(struct eisa_device *edev)
{
 unsigned short cfg_lsw = inw(edev->base_addr + 0xc86);
 unsigned int chip_irq = ((cfg_lsw >> 8) & 0x07) + 10;
 if ((chip_irq == 13) || (chip_irq > 15))
  return 0;
 return chip_irq;
}
