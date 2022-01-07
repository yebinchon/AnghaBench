
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct s3c24xx_uart_info {int num_clks; unsigned int clksel_mask; unsigned int clksel_shift; } ;


 int S3C2410_UCON ;
 unsigned int rd_regl (struct uart_port*,int ) ;
 struct s3c24xx_uart_info* s3c24xx_port_to_info (struct uart_port*) ;
 int wr_regl (struct uart_port*,int ,unsigned int) ;

__attribute__((used)) static void s3c24xx_serial_setsource(struct uart_port *port,
   unsigned int clk_sel)
{
 struct s3c24xx_uart_info *info = s3c24xx_port_to_info(port);
 unsigned int ucon;

 if (info->num_clks == 1)
  return;

 ucon = rd_regl(port, S3C2410_UCON);
 if ((ucon & info->clksel_mask) >> info->clksel_shift == clk_sel)
  return;

 ucon &= ~info->clksel_mask;
 ucon |= clk_sel << info->clksel_shift;
 wr_regl(port, S3C2410_UCON, ucon);
}
