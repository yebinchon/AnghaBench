
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dispc_compat ;
 int dispc_free_irq (int *) ;

void dss_dispc_uninitialize_irq(void)
{
 dispc_free_irq(&dispc_compat);
}
