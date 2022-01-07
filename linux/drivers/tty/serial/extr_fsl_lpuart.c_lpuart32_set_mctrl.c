
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_RTS ;
 int UARTMODIR ;
 unsigned long UARTMODIR_RXRTSE ;
 unsigned long UARTMODIR_TXCTSE ;
 unsigned long lpuart32_read (struct uart_port*,int ) ;
 int lpuart32_write (struct uart_port*,unsigned long,int ) ;

__attribute__((used)) static void lpuart32_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 unsigned long temp;

 temp = lpuart32_read(port, UARTMODIR) &
   ~(UARTMODIR_RXRTSE | UARTMODIR_TXCTSE);

 if (mctrl & TIOCM_RTS)
  temp |= UARTMODIR_RXRTSE;

 if (mctrl & TIOCM_CTS)
  temp |= UARTMODIR_TXCTSE;

 lpuart32_write(port, temp, UARTMODIR);
}
