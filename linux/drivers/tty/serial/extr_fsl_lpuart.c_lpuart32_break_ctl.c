
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UARTCTRL ;
 unsigned long UARTCTRL_SBK ;
 unsigned long lpuart32_read (struct uart_port*,int ) ;
 int lpuart32_write (struct uart_port*,unsigned long,int ) ;

__attribute__((used)) static void lpuart32_break_ctl(struct uart_port *port, int break_state)
{
 unsigned long temp;

 temp = lpuart32_read(port, UARTCTRL) & ~UARTCTRL_SBK;

 if (break_state != 0)
  temp |= UARTCTRL_SBK;

 lpuart32_write(port, temp, UARTCTRL);
}
