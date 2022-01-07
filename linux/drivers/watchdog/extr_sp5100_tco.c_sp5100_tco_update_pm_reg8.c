
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SP5100_IO_PM_DATA_REG ;
 int SP5100_IO_PM_INDEX_REG ;
 int inb (int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static void sp5100_tco_update_pm_reg8(u8 index, u8 reset, u8 set)
{
 u8 val;

 outb(index, SP5100_IO_PM_INDEX_REG);
 val = inb(SP5100_IO_PM_DATA_REG);
 val &= reset;
 val |= set;
 outb(val, SP5100_IO_PM_DATA_REG);
}
