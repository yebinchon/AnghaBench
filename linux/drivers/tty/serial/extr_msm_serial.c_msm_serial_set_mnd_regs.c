
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; } ;
struct msm_port {scalar_t__ is_uartdm; } ;


 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int msm_serial_set_mnd_regs_tcxo (struct uart_port*) ;
 int msm_serial_set_mnd_regs_tcxoby4 (struct uart_port*) ;

__attribute__((used)) static void msm_serial_set_mnd_regs(struct uart_port *port)
{
 struct msm_port *msm_port = UART_TO_MSM(port);





 if (msm_port->is_uartdm)
  return;

 if (port->uartclk == 19200000)
  msm_serial_set_mnd_regs_tcxo(port);
 else if (port->uartclk == 4800000)
  msm_serial_set_mnd_regs_tcxoby4(port);
}
