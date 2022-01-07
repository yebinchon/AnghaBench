
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VDE_INTERRUPT ;
 int VDE_I_ENABLE ;
 int viafb_enabled_ints ;
 int viafb_mmio_write (int ,int) ;

void viafb_irq_enable(u32 mask)
{
 viafb_enabled_ints |= mask;
 viafb_mmio_write(VDE_INTERRUPT, viafb_enabled_ints | VDE_I_ENABLE);
}
