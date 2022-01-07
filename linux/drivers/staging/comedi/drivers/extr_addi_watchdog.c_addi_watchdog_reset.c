
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ADDI_TCW_CTRL_REG ;
 scalar_t__ ADDI_TCW_RELOAD_REG ;
 int outl (int,scalar_t__) ;

void addi_watchdog_reset(unsigned long iobase)
{
 outl(0x0, iobase + ADDI_TCW_CTRL_REG);
 outl(0x0, iobase + ADDI_TCW_RELOAD_REG);
}
