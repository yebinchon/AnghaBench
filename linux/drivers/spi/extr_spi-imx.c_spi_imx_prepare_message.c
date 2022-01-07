
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_imx_data {int clk_per; int clk_ipg; TYPE_1__* devtype_data; } ;
struct TYPE_2__ {int (* prepare_message ) (struct spi_imx_data*,struct spi_message*) ;} ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct spi_imx_data* spi_master_get_devdata (struct spi_master*) ;
 int stub1 (struct spi_imx_data*,struct spi_message*) ;

__attribute__((used)) static int
spi_imx_prepare_message(struct spi_master *master, struct spi_message *msg)
{
 struct spi_imx_data *spi_imx = spi_master_get_devdata(master);
 int ret;

 ret = clk_enable(spi_imx->clk_per);
 if (ret)
  return ret;

 ret = clk_enable(spi_imx->clk_ipg);
 if (ret) {
  clk_disable(spi_imx->clk_per);
  return ret;
 }

 ret = spi_imx->devtype_data->prepare_message(spi_imx, msg);
 if (ret) {
  clk_disable(spi_imx->clk_ipg);
  clk_disable(spi_imx->clk_per);
 }

 return ret;
}
