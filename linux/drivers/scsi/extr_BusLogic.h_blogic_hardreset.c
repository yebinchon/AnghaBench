
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hard_reset; } ;
union blogic_cntrl_reg {scalar_t__ all; TYPE_1__ cr; } ;
struct blogic_adapter {scalar_t__ io_addr; } ;


 scalar_t__ BLOGIC_CNTRL_REG ;
 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void blogic_hardreset(struct blogic_adapter *adapter)
{
 union blogic_cntrl_reg cr;
 cr.all = 0;
 cr.cr.hard_reset = 1;
 outb(cr.all, adapter->io_addr + BLOGIC_CNTRL_REG);
}
