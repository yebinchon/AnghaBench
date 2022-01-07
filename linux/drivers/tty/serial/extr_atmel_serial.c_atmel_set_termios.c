
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; unsigned int tg; } ;
struct TYPE_3__ {int flags; unsigned int delay_rts_after_send; } ;
struct uart_port {int uartclk; int read_status_mask; int ignore_status_mask; int lock; TYPE_2__ iso7816; TYPE_1__ rs485; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct atmel_uart_port {int tx_stopped; scalar_t__ has_frac_baudrate; int gpios; } ;


 int ATMEL_US_BRGR ;
 unsigned int ATMEL_US_CHRL ;
 unsigned int ATMEL_US_CHRL_5 ;
 unsigned int ATMEL_US_CHRL_6 ;
 unsigned int ATMEL_US_CHRL_7 ;
 unsigned int ATMEL_US_CHRL_8 ;
 unsigned int ATMEL_US_CLKO ;
 int ATMEL_US_CR ;
 unsigned int ATMEL_US_FP_MASK ;
 unsigned int ATMEL_US_FP_OFFSET ;
 int ATMEL_US_FRAME ;
 int ATMEL_US_IDR ;
 int ATMEL_US_IER ;
 int ATMEL_US_IMR ;
 unsigned int ATMEL_US_MAX_ITER (int) ;
 int ATMEL_US_MR ;
 unsigned int ATMEL_US_NBSTOP ;
 unsigned int ATMEL_US_NBSTOP_2 ;
 int ATMEL_US_OVRE ;
 unsigned int ATMEL_US_PAR ;
 int ATMEL_US_PARE ;
 unsigned int ATMEL_US_PAR_EVEN ;
 unsigned int ATMEL_US_PAR_MARK ;
 unsigned int ATMEL_US_PAR_NONE ;
 unsigned int ATMEL_US_PAR_ODD ;
 unsigned int ATMEL_US_PAR_SPACE ;
 unsigned int ATMEL_US_RSTRX ;
 unsigned int ATMEL_US_RSTSTA ;
 unsigned int ATMEL_US_RTSDIS ;
 unsigned int ATMEL_US_RTSEN ;
 int ATMEL_US_RXBRK ;
 unsigned int ATMEL_US_RXDIS ;
 unsigned int ATMEL_US_RXEN ;
 int ATMEL_US_TTGR ;
 unsigned int ATMEL_US_TXDIS ;
 unsigned int ATMEL_US_TXEN ;
 unsigned int ATMEL_US_USCLKS ;
 unsigned int ATMEL_US_USCLKS_MCK ;
 unsigned int ATMEL_US_USCLKS_MCK_DIV8 ;
 unsigned int ATMEL_US_USMODE ;
 unsigned int ATMEL_US_USMODE_HWHS ;
 unsigned int ATMEL_US_USMODE_ISO7816_T0 ;
 unsigned int ATMEL_US_USMODE_ISO7816_T1 ;
 unsigned int ATMEL_US_USMODE_NORMAL ;
 unsigned int ATMEL_US_USMODE_RS485 ;
 int BRKINT ;
 int CMSPAR ;
 int CRTSCTS ;



 int CSIZE ;
 int CSTOPB ;
 unsigned int DIV_ROUND_CLOSEST (int,unsigned int) ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int SER_ISO7816_ENABLED ;
 int SER_ISO7816_T (int ) ;
 int SER_ISO7816_T_PARAM ;
 int SER_RS485_ENABLED ;
 scalar_t__ UART_ENABLE_MS (struct uart_port*,int) ;
 int UART_GPIO_CTS ;
 int atmel_disable_ms (struct uart_port*) ;
 int atmel_enable_ms (struct uart_port*) ;
 unsigned int atmel_uart_readl (struct uart_port*,int ) ;
 int atmel_uart_writel (struct uart_port*,int ,unsigned int) ;
 scalar_t__ atmel_use_fifo (struct uart_port*) ;
 scalar_t__ atmel_use_pdc_rx (struct uart_port*) ;
 int mctrl_gpio_to_gpiod (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void atmel_set_termios(struct uart_port *port, struct ktermios *termios,
         struct ktermios *old)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 unsigned long flags;
 unsigned int old_mode, mode, imr, quot, baud, div, cd, fp = 0;


 mode = old_mode = atmel_uart_readl(port, ATMEL_US_MR);


 mode &= ~(ATMEL_US_USCLKS | ATMEL_US_CHRL | ATMEL_US_NBSTOP |
    ATMEL_US_PAR | ATMEL_US_USMODE);

 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk / 16);


 switch (termios->c_cflag & CSIZE) {
 case 130:
  mode |= ATMEL_US_CHRL_5;
  break;
 case 129:
  mode |= ATMEL_US_CHRL_6;
  break;
 case 128:
  mode |= ATMEL_US_CHRL_7;
  break;
 default:
  mode |= ATMEL_US_CHRL_8;
  break;
 }


 if (termios->c_cflag & CSTOPB)
  mode |= ATMEL_US_NBSTOP_2;


 if (termios->c_cflag & PARENB) {

  if (termios->c_cflag & CMSPAR) {
   if (termios->c_cflag & PARODD)
    mode |= ATMEL_US_PAR_MARK;
   else
    mode |= ATMEL_US_PAR_SPACE;
  } else if (termios->c_cflag & PARODD)
   mode |= ATMEL_US_PAR_ODD;
  else
   mode |= ATMEL_US_PAR_EVEN;
 } else
  mode |= ATMEL_US_PAR_NONE;

 spin_lock_irqsave(&port->lock, flags);

 port->read_status_mask = ATMEL_US_OVRE;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= (ATMEL_US_FRAME | ATMEL_US_PARE);
 if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
  port->read_status_mask |= ATMEL_US_RXBRK;

 if (atmel_use_pdc_rx(port))

  atmel_uart_writel(port, ATMEL_US_IER, port->read_status_mask);




 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= (ATMEL_US_FRAME | ATMEL_US_PARE);
 if (termios->c_iflag & IGNBRK) {
  port->ignore_status_mask |= ATMEL_US_RXBRK;




  if (termios->c_iflag & IGNPAR)
   port->ignore_status_mask |= ATMEL_US_OVRE;
 }



 uart_update_timeout(port, termios->c_cflag, baud);






 imr = atmel_uart_readl(port, ATMEL_US_IMR);
 atmel_uart_writel(port, ATMEL_US_IDR, -1);


 atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_TXDIS | ATMEL_US_RXDIS);
 atmel_port->tx_stopped = 1;


 if (port->rs485.flags & SER_RS485_ENABLED) {
  atmel_uart_writel(port, ATMEL_US_TTGR,
      port->rs485.delay_rts_after_send);
  mode |= ATMEL_US_USMODE_RS485;
 } else if (port->iso7816.flags & SER_ISO7816_ENABLED) {
  atmel_uart_writel(port, ATMEL_US_TTGR, port->iso7816.tg);

  mode |= ATMEL_US_USCLKS_MCK | ATMEL_US_CLKO;

  mode |= ATMEL_US_MAX_ITER(3);
  if ((port->iso7816.flags & SER_ISO7816_T_PARAM)
    == SER_ISO7816_T(0))
   mode |= ATMEL_US_USMODE_ISO7816_T0;
  else
   mode |= ATMEL_US_USMODE_ISO7816_T1;
 } else if (termios->c_cflag & CRTSCTS) {

  if (atmel_use_fifo(port) &&
      !mctrl_gpio_to_gpiod(atmel_port->gpios, UART_GPIO_CTS)) {
   mode |= ATMEL_US_USMODE_HWHS;
  } else {




   mode |= ATMEL_US_USMODE_NORMAL;
  }
 } else {

  mode |= ATMEL_US_USMODE_NORMAL;
 }


 atmel_uart_writel(port, ATMEL_US_MR, mode);





 if ((old_mode & ATMEL_US_USMODE) != (mode & ATMEL_US_USMODE)) {
  unsigned int rts_state;

  if ((mode & ATMEL_US_USMODE) == ATMEL_US_USMODE_HWHS) {

   rts_state = ATMEL_US_RTSDIS;
  } else {

   rts_state = ATMEL_US_RTSEN;
  }

  atmel_uart_writel(port, ATMEL_US_CR, rts_state);
 }
 if (atmel_port->has_frac_baudrate) {
  div = DIV_ROUND_CLOSEST(port->uartclk, baud * 2);
  cd = div >> 3;
  fp = div & ATMEL_US_FP_MASK;
 } else {
  cd = uart_get_divisor(port, baud);
 }

 if (cd > 65535) {
  cd /= 8;
  mode |= ATMEL_US_USCLKS_MCK_DIV8;
 }
 quot = cd | fp << ATMEL_US_FP_OFFSET;

 if (!(port->iso7816.flags & SER_ISO7816_ENABLED))
  atmel_uart_writel(port, ATMEL_US_BRGR, quot);
 atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_RSTSTA | ATMEL_US_RSTRX);
 atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_TXEN | ATMEL_US_RXEN);
 atmel_port->tx_stopped = 0;


 atmel_uart_writel(port, ATMEL_US_IER, imr);


 if (UART_ENABLE_MS(port, termios->c_cflag))
  atmel_enable_ms(port);
 else
  atmel_disable_ms(port);

 spin_unlock_irqrestore(&port->lock, flags);
}
