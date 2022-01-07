
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DISPC_IRQENABLE ;
 int dispc_read_reg (int ) ;

u32 dispc_read_irqenable(void)
{
 return dispc_read_reg(DISPC_IRQENABLE);
}
