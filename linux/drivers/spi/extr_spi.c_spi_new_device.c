
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* platform_data; } ;
struct spi_device {TYPE_1__ dev; int * controller_state; int controller_data; int modalias; int irq; int mode; int max_speed_hz; int chip_select; } ;
struct spi_controller {int dev; } ;
struct spi_board_info {int properties; int modalias; int controller_data; scalar_t__ platform_data; int irq; int mode; int max_speed_hz; int chip_select; } ;


 int WARN_ON (int) ;
 int dev_err (int *,char*,int ,int) ;
 int device_add_properties (TYPE_1__*,int ) ;
 int device_remove_properties (TYPE_1__*) ;
 int spi_add_device (struct spi_device*) ;
 struct spi_device* spi_alloc_device (struct spi_controller*) ;
 int spi_dev_put (struct spi_device*) ;
 int strlcpy (int ,int ,int) ;
 int strlen (int ) ;

struct spi_device *spi_new_device(struct spi_controller *ctlr,
      struct spi_board_info *chip)
{
 struct spi_device *proxy;
 int status;
 proxy = spi_alloc_device(ctlr);
 if (!proxy)
  return ((void*)0);

 WARN_ON(strlen(chip->modalias) >= sizeof(proxy->modalias));

 proxy->chip_select = chip->chip_select;
 proxy->max_speed_hz = chip->max_speed_hz;
 proxy->mode = chip->mode;
 proxy->irq = chip->irq;
 strlcpy(proxy->modalias, chip->modalias, sizeof(proxy->modalias));
 proxy->dev.platform_data = (void *) chip->platform_data;
 proxy->controller_data = chip->controller_data;
 proxy->controller_state = ((void*)0);

 if (chip->properties) {
  status = device_add_properties(&proxy->dev, chip->properties);
  if (status) {
   dev_err(&ctlr->dev,
    "failed to add properties to '%s': %d\n",
    chip->modalias, status);
   goto err_dev_put;
  }
 }

 status = spi_add_device(proxy);
 if (status < 0)
  goto err_remove_props;

 return proxy;

err_remove_props:
 if (chip->properties)
  device_remove_properties(&proxy->dev);
err_dev_put:
 spi_dev_put(proxy);
 return ((void*)0);
}
