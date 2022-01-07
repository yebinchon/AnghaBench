
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt455_regs {scalar_t__ addr_clr; } ;


 int mb () ;

__attribute__((used)) static inline void bt455_reset_reg(struct bt455_regs *regs)
{
 mb();
 regs->addr_clr = 0;
}
