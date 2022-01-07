
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct spi_device {int chip_select; int max_speed_hz; TYPE_3__ dev; int cs_gpio; struct s3c64xx_spi_csinfo* controller_data; int master; } ;
struct s3c64xx_spi_driver_data {TYPE_2__* pdev; int src_clk; TYPE_1__* port_conf; } ;
struct s3c64xx_spi_csinfo {int line; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int clk_from_cmu; } ;


 int EINVAL ;
 int ENODEV ;
 int GPIOF_OUT_INIT_HIGH ;
 scalar_t__ IS_ERR_OR_NULL (struct s3c64xx_spi_csinfo*) ;
 int S3C64XX_SPI_PSR_MASK ;
 int clk_get_rate (int ) ;
 int dev_err (TYPE_3__*,char*,int,...) ;
 int dev_name (TYPE_3__*) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request_one (int ,int ,int ) ;
 int kfree (struct s3c64xx_spi_csinfo*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 struct s3c64xx_spi_csinfo* s3c64xx_get_slave_ctrldata (struct spi_device*) ;
 int s3c64xx_spi_set_cs (struct spi_device*,int) ;
 int spi_get_ctldata (struct spi_device*) ;
 struct s3c64xx_spi_driver_data* spi_master_get_devdata (int ) ;
 int spi_set_ctldata (struct spi_device*,struct s3c64xx_spi_csinfo*) ;

__attribute__((used)) static int s3c64xx_spi_setup(struct spi_device *spi)
{
 struct s3c64xx_spi_csinfo *cs = spi->controller_data;
 struct s3c64xx_spi_driver_data *sdd;
 int err;

 sdd = spi_master_get_devdata(spi->master);
 if (spi->dev.of_node) {
  cs = s3c64xx_get_slave_ctrldata(spi);
  spi->controller_data = cs;
 } else if (cs) {





  spi->cs_gpio = cs->line;
 }

 if (IS_ERR_OR_NULL(cs)) {
  dev_err(&spi->dev, "No CS for SPI(%d)\n", spi->chip_select);
  return -ENODEV;
 }

 if (!spi_get_ctldata(spi)) {
  if (gpio_is_valid(spi->cs_gpio)) {
   err = gpio_request_one(spi->cs_gpio, GPIOF_OUT_INIT_HIGH,
            dev_name(&spi->dev));
   if (err) {
    dev_err(&spi->dev,
     "Failed to get /CS gpio [%d]: %d\n",
     spi->cs_gpio, err);
    goto err_gpio_req;
   }
  }

  spi_set_ctldata(spi, cs);
 }

 pm_runtime_get_sync(&sdd->pdev->dev);


 if (!sdd->port_conf->clk_from_cmu) {
  u32 psr, speed;


  speed = clk_get_rate(sdd->src_clk) / 2 / (0 + 1);

  if (spi->max_speed_hz > speed)
   spi->max_speed_hz = speed;

  psr = clk_get_rate(sdd->src_clk) / 2 / spi->max_speed_hz - 1;
  psr &= S3C64XX_SPI_PSR_MASK;
  if (psr == S3C64XX_SPI_PSR_MASK)
   psr--;

  speed = clk_get_rate(sdd->src_clk) / 2 / (psr + 1);
  if (spi->max_speed_hz < speed) {
   if (psr+1 < S3C64XX_SPI_PSR_MASK) {
    psr++;
   } else {
    err = -EINVAL;
    goto setup_exit;
   }
  }

  speed = clk_get_rate(sdd->src_clk) / 2 / (psr + 1);
  if (spi->max_speed_hz >= speed) {
   spi->max_speed_hz = speed;
  } else {
   dev_err(&spi->dev, "Can't set %dHz transfer speed\n",
    spi->max_speed_hz);
   err = -EINVAL;
   goto setup_exit;
  }
 }

 pm_runtime_mark_last_busy(&sdd->pdev->dev);
 pm_runtime_put_autosuspend(&sdd->pdev->dev);
 s3c64xx_spi_set_cs(spi, 0);

 return 0;

setup_exit:
 pm_runtime_mark_last_busy(&sdd->pdev->dev);
 pm_runtime_put_autosuspend(&sdd->pdev->dev);

 s3c64xx_spi_set_cs(spi, 0);

 if (gpio_is_valid(spi->cs_gpio))
  gpio_free(spi->cs_gpio);
 spi_set_ctldata(spi, ((void*)0));

err_gpio_req:
 if (spi->dev.of_node)
  kfree(cs);

 return err;
}
