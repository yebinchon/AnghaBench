
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct s3c24xx_uart_port {unsigned int pm_level; int baudclk; int clk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,unsigned int) ;
 int s3c24xx_serial_txempty_nofifo (struct uart_port*) ;
 struct s3c24xx_uart_port* to_ourport (struct uart_port*) ;
 int udelay (int) ;

__attribute__((used)) static void s3c24xx_serial_pm(struct uart_port *port, unsigned int level,
         unsigned int old)
{
 struct s3c24xx_uart_port *ourport = to_ourport(port);
 int timeout = 10000;

 ourport->pm_level = level;

 switch (level) {
 case 3:
  while (--timeout && !s3c24xx_serial_txempty_nofifo(port))
   udelay(100);

  if (!IS_ERR(ourport->baudclk))
   clk_disable_unprepare(ourport->baudclk);

  clk_disable_unprepare(ourport->clk);
  break;

 case 0:
  clk_prepare_enable(ourport->clk);

  if (!IS_ERR(ourport->baudclk))
   clk_prepare_enable(ourport->baudclk);

  break;
 default:
  dev_err(port->dev, "s3c24xx_serial: unknown pm %d\n", level);
 }
}
