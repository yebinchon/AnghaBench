
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt455_regs {int dummy; } ;


 int bt455_select_reg (struct bt455_regs*,int) ;
 int bt455_write_cmap_next (struct bt455_regs*,int ) ;

__attribute__((used)) static inline void bt455_write_cmap_entry(struct bt455_regs *regs,
       int cr, u8 grey)
{
 bt455_select_reg(regs, cr);
 bt455_write_cmap_next(regs, grey);
}
