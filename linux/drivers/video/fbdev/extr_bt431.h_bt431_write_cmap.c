
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bt431_regs {int dummy; } ;


 int bt431_select_reg (struct bt431_regs*,int) ;
 int bt431_write_cmap_inc (struct bt431_regs*,int ) ;

__attribute__((used)) static inline void bt431_write_cmap(struct bt431_regs *regs, int cr, u16 value)
{
 bt431_select_reg(regs, cr);
 bt431_write_cmap_inc(regs, value);
}
