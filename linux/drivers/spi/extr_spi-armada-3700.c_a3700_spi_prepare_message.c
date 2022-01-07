
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct spi_device {int mode; int dev; } ;
struct a3700_spi {int clk; } ;


 int a3700_spi_fifo_flush (struct a3700_spi*) ;
 int a3700_spi_mode_set (struct a3700_spi*,int ) ;
 int clk_enable (int ) ;
 int dev_err (int *,char*,int) ;
 struct a3700_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int a3700_spi_prepare_message(struct spi_master *master,
         struct spi_message *message)
{
 struct a3700_spi *a3700_spi = spi_master_get_devdata(master);
 struct spi_device *spi = message->spi;
 int ret;

 ret = clk_enable(a3700_spi->clk);
 if (ret) {
  dev_err(&spi->dev, "failed to enable clk with error %d\n", ret);
  return ret;
 }


 ret = a3700_spi_fifo_flush(a3700_spi);
 if (ret)
  return ret;

 a3700_spi_mode_set(a3700_spi, spi->mode);

 return 0;
}
