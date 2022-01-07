
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ type; } ;
struct uart_8250_port {int bugs; unsigned char lsr_saved_flags; int acr; TYPE_1__* dma; } ;
struct TYPE_2__ {int (* tx_dma ) (struct uart_8250_port*) ;} ;


 unsigned char LSR_SAVE_FLAGS ;
 scalar_t__ PORT_16C950 ;
 int UART_ACR ;
 int UART_ACR_TXDIS ;
 int UART_BUG_TXEN ;
 int UART_LSR ;
 unsigned char UART_LSR_THRE ;
 scalar_t__ serial8250_set_THRI (struct uart_8250_port*) ;
 int serial8250_tx_chars (struct uart_8250_port*) ;
 int serial_icr_write (struct uart_8250_port*,int ,int) ;
 unsigned char serial_in (struct uart_8250_port*,int ) ;
 int stub1 (struct uart_8250_port*) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static inline void __start_tx(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);

 if (up->dma && !up->dma->tx_dma(up))
  return;

 if (serial8250_set_THRI(up)) {
  if (up->bugs & UART_BUG_TXEN) {
   unsigned char lsr;

   lsr = serial_in(up, UART_LSR);
   up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
   if (lsr & UART_LSR_THRE)
    serial8250_tx_chars(up);
  }
 }




 if (port->type == PORT_16C950 && up->acr & UART_ACR_TXDIS) {
  up->acr &= ~UART_ACR_TXDIS;
  serial_icr_write(up, UART_ACR, up->acr);
 }
}
