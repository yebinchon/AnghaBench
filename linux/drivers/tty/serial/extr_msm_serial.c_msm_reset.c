
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct msm_port {scalar_t__ is_uartdm; } ;


 int UARTDM_DMEN ;
 int UART_CR ;
 int UART_CR_CMD_RESET_BREAK_INT ;
 int UART_CR_CMD_RESET_CTS ;
 int UART_CR_CMD_RESET_ERR ;
 int UART_CR_CMD_RESET_RX ;
 int UART_CR_CMD_RESET_TX ;
 int UART_CR_CMD_SET_RFR ;
 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int msm_write (struct uart_port*,int ,int ) ;

__attribute__((used)) static void msm_reset(struct uart_port *port)
{
 struct msm_port *msm_port = UART_TO_MSM(port);


 msm_write(port, UART_CR_CMD_RESET_RX, UART_CR);
 msm_write(port, UART_CR_CMD_RESET_TX, UART_CR);
 msm_write(port, UART_CR_CMD_RESET_ERR, UART_CR);
 msm_write(port, UART_CR_CMD_RESET_BREAK_INT, UART_CR);
 msm_write(port, UART_CR_CMD_RESET_CTS, UART_CR);
 msm_write(port, UART_CR_CMD_SET_RFR, UART_CR);


 if (msm_port->is_uartdm)
  msm_write(port, 0, UARTDM_DMEN);
}
