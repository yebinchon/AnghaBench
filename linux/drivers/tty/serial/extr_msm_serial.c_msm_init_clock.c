
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct msm_port {int pclk; int clk; } ;


 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int clk_prepare_enable (int ) ;
 int msm_serial_set_mnd_regs (struct uart_port*) ;

__attribute__((used)) static void msm_init_clock(struct uart_port *port)
{
 struct msm_port *msm_port = UART_TO_MSM(port);

 clk_prepare_enable(msm_port->clk);
 clk_prepare_enable(msm_port->pclk);
 msm_serial_set_mnd_regs(port);
}
