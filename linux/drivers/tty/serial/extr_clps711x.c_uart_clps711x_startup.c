
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; int dev; } ;
struct clps711x_port {int syscon; } ;


 int SYSCON_OFFSET ;
 int SYSCON_UARTEN ;
 int UBRLCR_BREAK ;
 scalar_t__ UBRLCR_OFFSET ;
 struct clps711x_port* dev_get_drvdata (int ) ;
 int readl (scalar_t__) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int uart_clps711x_startup(struct uart_port *port)
{
 struct clps711x_port *s = dev_get_drvdata(port->dev);


 writel(readl(port->membase + UBRLCR_OFFSET) & ~UBRLCR_BREAK,
        port->membase + UBRLCR_OFFSET);


 return regmap_update_bits(s->syscon, SYSCON_OFFSET,
      SYSCON_UARTEN, SYSCON_UARTEN);
}
