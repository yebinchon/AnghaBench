
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct uart_port {int dummy; } ;


 int MAX310X_TXFIFOLVL_REG ;
 unsigned int TIOCSER_TEMT ;
 scalar_t__ max310x_port_read (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int max310x_tx_empty(struct uart_port *port)
{
 u8 lvl = max310x_port_read(port, MAX310X_TXFIFOLVL_REG);

 return lvl ? 0 : TIOCSER_TEMT;
}
