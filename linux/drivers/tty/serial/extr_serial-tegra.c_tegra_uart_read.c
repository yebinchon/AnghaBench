
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long regshift; scalar_t__ membase; } ;
struct tegra_uart_port {TYPE_1__ uport; } ;


 unsigned long readl (scalar_t__) ;

__attribute__((used)) static inline unsigned long tegra_uart_read(struct tegra_uart_port *tup,
  unsigned long reg)
{
 return readl(tup->uport.membase + (reg << tup->uport.regshift));
}
