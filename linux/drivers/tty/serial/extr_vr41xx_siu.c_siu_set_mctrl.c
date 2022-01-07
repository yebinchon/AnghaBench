
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {int dummy; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_OUT1 ;
 unsigned int TIOCM_OUT2 ;
 unsigned int TIOCM_RTS ;
 int UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_LOOP ;
 int UART_MCR_OUT1 ;
 int UART_MCR_OUT2 ;
 int UART_MCR_RTS ;
 int siu_write (struct uart_port*,int ,int ) ;

__attribute__((used)) static void siu_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 uint8_t mcr = 0;

 if (mctrl & TIOCM_DTR)
  mcr |= UART_MCR_DTR;
 if (mctrl & TIOCM_RTS)
  mcr |= UART_MCR_RTS;
 if (mctrl & TIOCM_OUT1)
  mcr |= UART_MCR_OUT1;
 if (mctrl & TIOCM_OUT2)
  mcr |= UART_MCR_OUT2;
 if (mctrl & TIOCM_LOOP)
  mcr |= UART_MCR_LOOP;

 siu_write(port, UART_MCR, mcr);
}
