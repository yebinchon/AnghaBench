
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uart_port {scalar_t__ membase; } ;


 int MLB_USIO_FCR_FDRQ ;
 int MLB_USIO_FCR_FTIE ;
 scalar_t__ MLB_USIO_REG_FCR ;
 scalar_t__ MLB_USIO_REG_SCR ;
 scalar_t__ MLB_USIO_REG_SSR ;
 int MLB_USIO_SCR_TBIE ;
 int MLB_USIO_SSR_TBI ;
 int mlb_usio_tx_chars (struct uart_port*) ;
 int readb (scalar_t__) ;
 int readw (scalar_t__) ;
 int writeb (int,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void mlb_usio_start_tx(struct uart_port *port)
{
 u16 fcr = readw(port->membase + MLB_USIO_REG_FCR);

 writew(fcr | MLB_USIO_FCR_FTIE, port->membase + MLB_USIO_REG_FCR);
 if (!(fcr & MLB_USIO_FCR_FDRQ))
  return;

 writeb(readb(port->membase + MLB_USIO_REG_SCR) | MLB_USIO_SCR_TBIE,
        port->membase + MLB_USIO_REG_SCR);

 if (readb(port->membase + MLB_USIO_REG_SSR) & MLB_USIO_SSR_TBI)
  mlb_usio_tx_chars(port);
}
