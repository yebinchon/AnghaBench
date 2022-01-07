
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_dispc_isr_data {int mask; int * isr; } ;
struct TYPE_2__ {struct omap_dispc_isr_data* registered_isr; int irq_error_mask; } ;


 int DISPC_MAX_NR_ISRS ;
 TYPE_1__ dispc_compat ;
 int dispc_write_irqenable (int ) ;

__attribute__((used)) static void _omap_dispc_set_irqs(void)
{
 u32 mask;
 int i;
 struct omap_dispc_isr_data *isr_data;

 mask = dispc_compat.irq_error_mask;

 for (i = 0; i < DISPC_MAX_NR_ISRS; i++) {
  isr_data = &dispc_compat.registered_isr[i];

  if (isr_data->isr == ((void*)0))
   continue;

  mask |= isr_data->mask;
 }

 dispc_write_irqenable(mask);
}
