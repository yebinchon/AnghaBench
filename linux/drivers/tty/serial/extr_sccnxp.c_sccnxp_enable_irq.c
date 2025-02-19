
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; int dev; } ;
struct sccnxp_port {int imr; } ;


 int SCCNXP_IMR_REG ;
 struct sccnxp_port* dev_get_drvdata (int ) ;
 int sccnxp_write (struct uart_port*,int ,int) ;

__attribute__((used)) static void sccnxp_enable_irq(struct uart_port *port, int mask)
{
 struct sccnxp_port *s = dev_get_drvdata(port->dev);

 s->imr |= mask << (port->line * 4);
 sccnxp_write(port, SCCNXP_IMR_REG, s->imr);
}
