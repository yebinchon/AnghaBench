
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt455_regs {int addr_cmap; } ;


 int mb () ;

__attribute__((used)) static inline void bt455_select_reg(struct bt455_regs *regs, int ir)
{
 mb();
 regs->addr_cmap = ir & 0x0f;
}
