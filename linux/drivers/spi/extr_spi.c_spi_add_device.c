
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int chip_select; int dev; int cs_gpio; int cs_gpiod; struct spi_controller* controller; } ;
struct TYPE_2__ {struct device* parent; } ;
struct spi_controller {int num_chipselect; int * cs_gpios; int * cs_gpiods; TYPE_1__ dev; } ;
struct device {int dummy; } ;
typedef int DEFINE_MUTEX ;


 int EINVAL ;
 int bus_for_each_dev (int *,int *,struct spi_device*,int ) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_name (int *) ;
 int device_add (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_bus_type ;
 int spi_dev_check ;
 int spi_dev_set_name (struct spi_device*) ;
 int spi_setup (struct spi_device*) ;

int spi_add_device(struct spi_device *spi)
{
 static DEFINE_MUTEX(spi_add_lock);
 struct spi_controller *ctlr = spi->controller;
 struct device *dev = ctlr->dev.parent;
 int status;


 if (spi->chip_select >= ctlr->num_chipselect) {
  dev_err(dev, "cs%d >= max %d\n", spi->chip_select,
   ctlr->num_chipselect);
  return -EINVAL;
 }


 spi_dev_set_name(spi);





 mutex_lock(&spi_add_lock);

 status = bus_for_each_dev(&spi_bus_type, ((void*)0), spi, spi_dev_check);
 if (status) {
  dev_err(dev, "chipselect %d already in use\n",
    spi->chip_select);
  goto done;
 }


 if (ctlr->cs_gpiods)
  spi->cs_gpiod = ctlr->cs_gpiods[spi->chip_select];
 else if (ctlr->cs_gpios)
  spi->cs_gpio = ctlr->cs_gpios[spi->chip_select];





 status = spi_setup(spi);
 if (status < 0) {
  dev_err(dev, "can't setup %s, status %d\n",
    dev_name(&spi->dev), status);
  goto done;
 }


 status = device_add(&spi->dev);
 if (status < 0)
  dev_err(dev, "can't add %s, status %d\n",
    dev_name(&spi->dev), status);
 else
  dev_dbg(dev, "registered child %s\n", dev_name(&spi->dev));

done:
 mutex_unlock(&spi_add_lock);
 return status;
}
