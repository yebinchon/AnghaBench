
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int RDA_UART_CMD_SET ;
 int RDA_UART_CTS ;
 int RDA_UART_RTS ;
 int RDA_UART_STATUS ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_RTS ;
 int rda_uart_read (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int rda_uart_get_mctrl(struct uart_port *port)
{
 unsigned int mctrl = 0;
 u32 cmd_set, status;

 cmd_set = rda_uart_read(port, RDA_UART_CMD_SET);
 status = rda_uart_read(port, RDA_UART_STATUS);
 if (cmd_set & RDA_UART_RTS)
  mctrl |= TIOCM_RTS;
 if (!(status & RDA_UART_CTS))
  mctrl |= TIOCM_CTS;

 return mctrl;
}
