
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int uartclk; int lock; } ;
struct TYPE_4__ {TYPE_1__* cons; int dev; } ;
struct uart_8250_port {int lcr; TYPE_2__ port; int * dma; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct TYPE_3__ {int cflag; } ;


 int CRTSCTS ;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 unsigned int DIV_ROUND_UP (int,int) ;
 int MTK_UART_FC_HW ;
 int MTK_UART_FC_NONE ;
 int MTK_UART_FC_SW ;
 int MTK_UART_FRACDIV_L ;
 int MTK_UART_FRACDIV_M ;
 int MTK_UART_HIGHS ;
 int MTK_UART_SAMPLE_COUNT ;
 int MTK_UART_SAMPLE_POINT ;
 int UART_DIV_MAX ;
 int UART_LCR ;
 int UART_LCR_DLAB ;
 int devm_kfree (int ,int *) ;
 int mtk8250_dma_enable (struct uart_8250_port*) ;
 int mtk8250_set_flow_ctrl (struct uart_8250_port*,int) ;
 int serial8250_do_set_termios (struct uart_port*,struct ktermios*,struct ktermios*) ;
 int serial_dl_write (struct uart_8250_port*,unsigned int) ;
 int serial_port_out (struct uart_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 scalar_t__ uart_console (struct uart_port*) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void
mtk8250_set_termios(struct uart_port *port, struct ktermios *termios,
   struct ktermios *old)
{
 unsigned short fraction_L_mapping[] = {
  0, 1, 0x5, 0x15, 0x55, 0x57, 0x57, 0x77, 0x7F, 0xFF, 0xFF
 };
 unsigned short fraction_M_mapping[] = {
  0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 3
 };
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned int baud, quot, fraction;
 unsigned long flags;
 int mode;
 serial8250_do_set_termios(port, termios, old);
 baud = uart_get_baud_rate(port, termios, old,
      port->uartclk / 16 / UART_DIV_MAX,
      port->uartclk);

 if (baud < 115200) {
  serial_port_out(port, MTK_UART_HIGHS, 0x0);
  quot = uart_get_divisor(port, baud);
 } else {
  serial_port_out(port, MTK_UART_HIGHS, 0x3);
  quot = DIV_ROUND_UP(port->uartclk, 256 * baud);
 }





 spin_lock_irqsave(&port->lock, flags);


 serial_port_out(port, UART_LCR, up->lcr | UART_LCR_DLAB);
 serial_dl_write(up, quot);


 serial_port_out(port, UART_LCR, up->lcr);

 if (baud >= 115200) {
  unsigned int tmp;

  tmp = (port->uartclk / (baud * quot)) - 1;
  serial_port_out(port, MTK_UART_SAMPLE_COUNT, tmp);
  serial_port_out(port, MTK_UART_SAMPLE_POINT,
     (tmp >> 1) - 1);


  fraction = ((port->uartclk * 100) / baud / quot) % 100;
  fraction = DIV_ROUND_CLOSEST(fraction, 10);
  serial_port_out(port, MTK_UART_FRACDIV_L,
      fraction_L_mapping[fraction]);
  serial_port_out(port, MTK_UART_FRACDIV_M,
      fraction_M_mapping[fraction]);
 } else {
  serial_port_out(port, MTK_UART_SAMPLE_COUNT, 0x00);
  serial_port_out(port, MTK_UART_SAMPLE_POINT, 0xff);
  serial_port_out(port, MTK_UART_FRACDIV_L, 0x00);
  serial_port_out(port, MTK_UART_FRACDIV_M, 0x00);
 }

 if ((termios->c_cflag & CRTSCTS) && (!(termios->c_iflag & CRTSCTS)))
  mode = MTK_UART_FC_HW;
 else if (termios->c_iflag & CRTSCTS)
  mode = MTK_UART_FC_SW;
 else
  mode = MTK_UART_FC_NONE;

 mtk8250_set_flow_ctrl(up, mode);

 if (uart_console(port))
  up->port.cons->cflag = termios->c_cflag;

 spin_unlock_irqrestore(&port->lock, flags);

 if (tty_termios_baud_rate(termios))
  tty_termios_encode_baud_rate(termios, baud, baud);
}
