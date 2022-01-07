
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt455_regs {int addr_cmap_data; } ;


 int mb () ;
 int rmb () ;

__attribute__((used)) static inline void bt455_read_cmap_next(struct bt455_regs *regs, u8 *grey)
{
 mb();
 regs->addr_cmap_data;
 rmb();
 *grey = regs->addr_cmap_data & 0xf;
 rmb();
 regs->addr_cmap_data;
}
