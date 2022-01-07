
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DISPC_IRQSTATUS ;
 int dispc_write_reg (int ,int ) ;

void dispc_clear_irqstatus(u32 mask)
{
 dispc_write_reg(DISPC_IRQSTATUS, mask);
}
