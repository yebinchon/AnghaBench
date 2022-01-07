
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DISPC_IRQENABLE ;
 int dispc_clear_irqstatus (int) ;
 int dispc_read_reg (int ) ;
 int dispc_write_reg (int ,int) ;

void dispc_write_irqenable(u32 mask)
{
 u32 old_mask = dispc_read_reg(DISPC_IRQENABLE);


 dispc_clear_irqstatus((mask ^ old_mask) & mask);

 dispc_write_reg(DISPC_IRQENABLE, mask);
}
