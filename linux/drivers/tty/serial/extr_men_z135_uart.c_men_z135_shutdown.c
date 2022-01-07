
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int irq; } ;
struct men_z135_port {TYPE_1__ port; } ;


 int MEN_Z135_ALL_IRQS ;
 int MEN_Z135_CONF_REG ;
 int free_irq (int ,struct men_z135_port*) ;
 int men_z135_reg_clr (struct men_z135_port*,int ,int ) ;
 struct men_z135_port* to_men_z135 (struct uart_port*) ;

__attribute__((used)) static void men_z135_shutdown(struct uart_port *port)
{
 struct men_z135_port *uart = to_men_z135(port);
 u32 conf_reg = 0;

 conf_reg |= MEN_Z135_ALL_IRQS;

 men_z135_reg_clr(uart, MEN_Z135_CONF_REG, conf_reg);

 free_irq(uart->port.irq, uart);
}
