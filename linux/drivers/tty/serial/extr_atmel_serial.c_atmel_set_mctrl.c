
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int flags; unsigned int delay_rts_after_send; } ;
struct uart_port {TYPE_1__ rs485; } ;
struct atmel_uart_port {int gpios; } ;


 unsigned int ATMEL_US_CHMODE ;
 unsigned int ATMEL_US_CHMODE_LOC_LOOP ;
 unsigned int ATMEL_US_CHMODE_NORMAL ;
 int ATMEL_US_CR ;
 unsigned int ATMEL_US_DTRDIS ;
 unsigned int ATMEL_US_DTREN ;
 int ATMEL_US_MR ;
 unsigned int ATMEL_US_RTSDIS ;
 unsigned int ATMEL_US_RTSEN ;
 int ATMEL_US_TTGR ;
 unsigned int ATMEL_US_USMODE ;
 unsigned int ATMEL_US_USMODE_HWHS ;
 unsigned int ATMEL_US_USMODE_RS485 ;
 int SER_RS485_ENABLED ;
 int TIOCM_DTR ;
 int TIOCM_LOOP ;
 int TIOCM_RTS ;
 unsigned int atmel_uart_readl (struct uart_port*,int ) ;
 int atmel_uart_writel (struct uart_port*,int ,unsigned int) ;
 int mctrl_gpio_set (int ,int) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_set_mctrl(struct uart_port *port, u_int mctrl)
{
 unsigned int control = 0;
 unsigned int mode = atmel_uart_readl(port, ATMEL_US_MR);
 unsigned int rts_paused, rts_ready;
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);


 if (port->rs485.flags & SER_RS485_ENABLED) {
  atmel_uart_writel(port, ATMEL_US_TTGR,
      port->rs485.delay_rts_after_send);
  mode &= ~ATMEL_US_USMODE;
  mode |= ATMEL_US_USMODE_RS485;
 }


 if ((mode & ATMEL_US_USMODE) == ATMEL_US_USMODE_HWHS) {

  rts_paused = ATMEL_US_RTSEN;


  rts_ready = ATMEL_US_RTSDIS;
 } else {

  rts_paused = ATMEL_US_RTSDIS;


  rts_ready = ATMEL_US_RTSEN;
 }

 if (mctrl & TIOCM_RTS)
  control |= rts_ready;
 else
  control |= rts_paused;

 if (mctrl & TIOCM_DTR)
  control |= ATMEL_US_DTREN;
 else
  control |= ATMEL_US_DTRDIS;

 atmel_uart_writel(port, ATMEL_US_CR, control);

 mctrl_gpio_set(atmel_port->gpios, mctrl);


 mode &= ~ATMEL_US_CHMODE;
 if (mctrl & TIOCM_LOOP)
  mode |= ATMEL_US_CHMODE_LOC_LOOP;
 else
  mode |= ATMEL_US_CHMODE_NORMAL;

 atmel_uart_writel(port, ATMEL_US_MR, mode);
}
