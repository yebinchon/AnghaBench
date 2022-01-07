
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct atmel_uart_port {int backup_imr; int clk; } ;


 int ATMEL_US_IDR ;
 int ATMEL_US_IER ;
 int ATMEL_US_IMR ;
 int atmel_uart_readl (struct uart_port*,int ) ;
 int atmel_uart_writel (struct uart_port*,int ,int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,unsigned int) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_serial_pm(struct uart_port *port, unsigned int state,
       unsigned int oldstate)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);

 switch (state) {
 case 0:




  clk_prepare_enable(atmel_port->clk);


  atmel_uart_writel(port, ATMEL_US_IER, atmel_port->backup_imr);
  break;
 case 3:

  atmel_port->backup_imr = atmel_uart_readl(port, ATMEL_US_IMR);
  atmel_uart_writel(port, ATMEL_US_IDR, -1);





  clk_disable_unprepare(atmel_port->clk);
  break;
 default:
  dev_err(port->dev, "atmel_serial: unknown pm %d\n", state);
 }
}
