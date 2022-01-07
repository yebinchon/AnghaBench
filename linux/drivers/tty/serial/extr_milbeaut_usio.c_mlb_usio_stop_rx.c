
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ MLB_USIO_REG_SCR ;
 int MLB_USIO_SCR_RIE ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void mlb_usio_stop_rx(struct uart_port *port)
{
 writeb(readb(port->membase + MLB_USIO_REG_SCR) & ~MLB_USIO_SCR_RIE,
        port->membase + MLB_USIO_REG_SCR);
}
