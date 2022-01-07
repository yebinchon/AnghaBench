
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct men_z135_port {int dummy; } ;


 int MEN_Z135_CONF_REG ;
 int MEN_Z135_IER_MSIEN ;
 int men_z135_reg_clr (struct men_z135_port*,int ,int ) ;
 struct men_z135_port* to_men_z135 (struct uart_port*) ;

__attribute__((used)) static void men_z135_disable_ms(struct uart_port *port)
{
 struct men_z135_port *uart = to_men_z135(port);

 men_z135_reg_clr(uart, MEN_Z135_CONF_REG, MEN_Z135_IER_MSIEN);
}
