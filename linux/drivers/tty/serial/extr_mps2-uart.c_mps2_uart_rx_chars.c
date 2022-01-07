
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int rx; } ;
struct uart_port {TYPE_2__* state; TYPE_1__ icount; } ;
struct tty_port {int dummy; } ;
struct TYPE_4__ {struct tty_port port; } ;


 int TTY_NORMAL ;
 int UARTn_DATA ;
 int UARTn_STATE ;
 int UARTn_STATE_RX_FULL ;
 int mps2_uart_read8 (struct uart_port*,int ) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,int,int ) ;

__attribute__((used)) static void mps2_uart_rx_chars(struct uart_port *port)
{
 struct tty_port *tport = &port->state->port;

 while (mps2_uart_read8(port, UARTn_STATE) & UARTn_STATE_RX_FULL) {
  u8 rxdata = mps2_uart_read8(port, UARTn_DATA);

  port->icount.rx++;
  tty_insert_flip_char(&port->state->port, rxdata, TTY_NORMAL);
 }

 tty_flip_buffer_push(tport);
}
