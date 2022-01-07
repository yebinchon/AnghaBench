
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DISPC_IRQ_FRAMEDONEWB ;

u32 dispc_wb_get_framedone_irq(void)
{
 return DISPC_IRQ_FRAMEDONEWB;
}
