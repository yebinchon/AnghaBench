
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parent; } ;
struct spi_device {TYPE_2__ dev; scalar_t__ cs_gpiod; } ;
struct mpc8xxx_spi_probe_info {int immr_spi_cs; } ;
struct fsl_spi_platform_data {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;


 int SPI_BOOT_SEL_BIT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct fsl_spi_platform_data* dev_get_platdata (struct device*) ;
 int gpiod_set_value (scalar_t__,int) ;
 int iowrite32be (int ,int ) ;
 struct mpc8xxx_spi_probe_info* to_of_pinfo (struct fsl_spi_platform_data*) ;

__attribute__((used)) static void fsl_spi_cs_control(struct spi_device *spi, bool on)
{
 if (spi->cs_gpiod) {
  gpiod_set_value(spi->cs_gpiod, on);
 } else {
  struct device *dev = spi->dev.parent->parent;
  struct fsl_spi_platform_data *pdata = dev_get_platdata(dev);
  struct mpc8xxx_spi_probe_info *pinfo = to_of_pinfo(pdata);

  if (WARN_ON_ONCE(!pinfo->immr_spi_cs))
   return;
  iowrite32be(on ? SPI_BOOT_SEL_BIT : 0, pinfo->immr_spi_cs);
 }
}
