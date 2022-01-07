
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long regshift; scalar_t__ membase; } ;
struct tegra_uart_port {TYPE_1__ uport; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void tegra_uart_write(struct tegra_uart_port *tup, unsigned val,
 unsigned long reg)
{
 writel(val, tup->uport.membase + (reg << tup->uport.regshift));
}
