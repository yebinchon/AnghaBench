
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bt431_regs {int addr_cmap; } ;


 int mb () ;

__attribute__((used)) static inline void bt431_write_cmap_inc(struct bt431_regs *regs, u16 value)
{




 volatile u16 *r = &(regs->addr_cmap);

 mb();
 *r = value;
}
