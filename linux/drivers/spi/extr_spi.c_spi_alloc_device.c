
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int release; int * bus; int * parent; } ;
struct TYPE_3__ {int lock; } ;
struct spi_device {TYPE_2__ dev; TYPE_1__ statistics; int cs_gpio; struct spi_controller* controller; struct spi_controller* master; } ;
struct spi_controller {int dev; } ;


 int ENOENT ;
 int GFP_KERNEL ;
 int device_initialize (TYPE_2__*) ;
 struct spi_device* kzalloc (int,int ) ;
 int spi_bus_type ;
 int spi_controller_get (struct spi_controller*) ;
 int spi_controller_put (struct spi_controller*) ;
 int spidev_release ;
 int spin_lock_init (int *) ;

struct spi_device *spi_alloc_device(struct spi_controller *ctlr)
{
 struct spi_device *spi;

 if (!spi_controller_get(ctlr))
  return ((void*)0);

 spi = kzalloc(sizeof(*spi), GFP_KERNEL);
 if (!spi) {
  spi_controller_put(ctlr);
  return ((void*)0);
 }

 spi->master = spi->controller = ctlr;
 spi->dev.parent = &ctlr->dev;
 spi->dev.bus = &spi_bus_type;
 spi->dev.release = spidev_release;
 spi->cs_gpio = -ENOENT;

 spin_lock_init(&spi->statistics.lock);

 device_initialize(&spi->dev);
 return spi;
}
