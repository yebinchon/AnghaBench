
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt455_regs {int addr_ovly; } ;


 int wmb () ;

__attribute__((used)) static inline void bt455_write_ovly_next(struct bt455_regs *regs, u8 grey)
{
 wmb();
 regs->addr_ovly = 0x0;
 wmb();
 regs->addr_ovly = grey & 0xf;
 wmb();
 regs->addr_ovly = 0x0;
}
