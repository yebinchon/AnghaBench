
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UART_CR ;
 int UART_CR_CMD_START_BREAK ;
 int UART_CR_CMD_STOP_BREAK ;
 int msm_write (struct uart_port*,int ,int ) ;

__attribute__((used)) static void msm_break_ctl(struct uart_port *port, int break_ctl)
{
 if (break_ctl)
  msm_write(port, UART_CR_CMD_START_BREAK, UART_CR);
 else
  msm_write(port, UART_CR_CMD_STOP_BREAK, UART_CR);
}
