
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame; int rx; } ;
struct uart_port {int lock; int membase; TYPE_1__ icount; TYPE_2__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_4__ {struct tty_port port; } ;


 int LPC32XX_HSUART_FIFO (int ) ;
 int LPC32XX_HSUART_IIR (int ) ;
 unsigned int LPC32XX_HSU_ERROR_DATA ;
 int LPC32XX_HSU_FE_INT ;
 unsigned int LPC32XX_HSU_RX_EMPTY ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,unsigned int,unsigned int) ;
 int writel (int ,int ) ;

__attribute__((used)) static void __serial_lpc32xx_rx(struct uart_port *port)
{
 struct tty_port *tport = &port->state->port;
 unsigned int tmp, flag;


 tmp = readl(LPC32XX_HSUART_FIFO(port->membase));
 while (!(tmp & LPC32XX_HSU_RX_EMPTY)) {
  flag = TTY_NORMAL;
  port->icount.rx++;

  if (tmp & LPC32XX_HSU_ERROR_DATA) {

   writel(LPC32XX_HSU_FE_INT,
          LPC32XX_HSUART_IIR(port->membase));
   port->icount.frame++;
   flag = TTY_FRAME;
   tty_insert_flip_char(tport, 0, TTY_FRAME);
  }

  tty_insert_flip_char(tport, (tmp & 0xFF), flag);

  tmp = readl(LPC32XX_HSUART_FIFO(port->membase));
 }

 spin_unlock(&port->lock);
 tty_flip_buffer_push(tport);
 spin_lock(&port->lock);
}
