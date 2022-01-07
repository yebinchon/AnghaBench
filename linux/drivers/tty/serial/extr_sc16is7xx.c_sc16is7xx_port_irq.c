
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int line; int dev; } ;
struct sc16is7xx_port {TYPE_1__* p; } ;
struct TYPE_2__ {struct uart_port port; } ;


 unsigned int SC16IS7XX_IIR_ID_MASK ;
 unsigned int SC16IS7XX_IIR_NO_INT_BIT ;

 int SC16IS7XX_IIR_REG ;




 int SC16IS7XX_RXLVL_REG ;
 int dev_err_ratelimited (int ,char*,int ,unsigned int) ;
 int sc16is7xx_handle_rx (struct uart_port*,unsigned int,unsigned int) ;
 int sc16is7xx_handle_tx (struct uart_port*) ;
 unsigned int sc16is7xx_port_read (struct uart_port*,int ) ;

__attribute__((used)) static bool sc16is7xx_port_irq(struct sc16is7xx_port *s, int portno)
{
 struct uart_port *port = &s->p[portno].port;

 do {
  unsigned int iir, rxlen;

  iir = sc16is7xx_port_read(port, SC16IS7XX_IIR_REG);
  if (iir & SC16IS7XX_IIR_NO_INT_BIT)
   return 0;

  iir &= SC16IS7XX_IIR_ID_MASK;

  switch (iir) {
  case 132:
  case 131:
  case 130:
  case 128:
   rxlen = sc16is7xx_port_read(port, SC16IS7XX_RXLVL_REG);
   if (rxlen)
    sc16is7xx_handle_rx(port, rxlen, iir);
   break;
  case 129:
   sc16is7xx_handle_tx(port);
   break;
  default:
   dev_err_ratelimited(port->dev,
         "ttySC%i: Unexpected interrupt: %x",
         port->line, iir);
   break;
  }
 } while (0);
 return 1;
}
