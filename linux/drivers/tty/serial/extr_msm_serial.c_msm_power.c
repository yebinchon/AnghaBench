
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct msm_port {int pclk; int clk; } ;


 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static void msm_power(struct uart_port *port, unsigned int state,
        unsigned int oldstate)
{
 struct msm_port *msm_port = UART_TO_MSM(port);

 switch (state) {
 case 0:
  clk_prepare_enable(msm_port->clk);
  clk_prepare_enable(msm_port->pclk);
  break;
 case 3:
  clk_disable_unprepare(msm_port->clk);
  clk_disable_unprepare(msm_port->pclk);
  break;
 default:
  pr_err("msm_serial: Unknown PM state %d\n", state);
 }
}
