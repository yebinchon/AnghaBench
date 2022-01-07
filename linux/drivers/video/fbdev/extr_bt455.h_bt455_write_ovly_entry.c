
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt455_regs {int dummy; } ;


 int bt455_reset_reg (struct bt455_regs*) ;
 int bt455_write_ovly_next (struct bt455_regs*,int ) ;

__attribute__((used)) static inline void bt455_write_ovly_entry(struct bt455_regs *regs, u8 grey)
{
 bt455_reset_reg(regs);
 bt455_write_ovly_next(regs, grey);
}
