
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int ULITE_STATUS ;
 int uart_in32 (int ,struct uart_port*) ;
 int ulite_transmit (struct uart_port*,int ) ;

__attribute__((used)) static void ulite_start_tx(struct uart_port *port)
{
 ulite_transmit(port, uart_in32(ULITE_STATUS, port));
}
