
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct device* dev; } ;
struct s3c24xx_uart_port {TYPE_2__ port; int baudclk_rate; struct clk* baudclk; TYPE_1__* cfg; struct s3c24xx_uart_info* info; } ;
struct s3c24xx_uart_info {unsigned int def_clk_sel; int num_clks; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int clk_sel; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int MAX_CLK_NAME_LENGTH ;
 struct clk* clk_get (struct device*,char*) ;
 int clk_get_rate (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int clk_put (struct clk*) ;
 int s3c24xx_serial_setsource (TYPE_2__*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int s3c24xx_serial_enable_baudclk(struct s3c24xx_uart_port *ourport)
{
 struct device *dev = ourport->port.dev;
 struct s3c24xx_uart_info *info = ourport->info;
 char clk_name[MAX_CLK_NAME_LENGTH];
 unsigned int clk_sel;
 struct clk *clk;
 int clk_num;
 int ret;

 clk_sel = ourport->cfg->clk_sel ? : info->def_clk_sel;
 for (clk_num = 0; clk_num < info->num_clks; clk_num++) {
  if (!(clk_sel & (1 << clk_num)))
   continue;

  sprintf(clk_name, "clk_uart_baud%d", clk_num);
  clk = clk_get(dev, clk_name);
  if (IS_ERR(clk))
   continue;

  ret = clk_prepare_enable(clk);
  if (ret) {
   clk_put(clk);
   continue;
  }

  ourport->baudclk = clk;
  ourport->baudclk_rate = clk_get_rate(clk);
  s3c24xx_serial_setsource(&ourport->port, clk_num);

  return 0;
 }

 return -EINVAL;
}
