
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* parent; int * class; } ;
struct spi_controller {int bus_num; int num_chipselect; int slave; TYPE_1__ dev; } ;
struct device {int dummy; } ;


 size_t ALIGN (int,int ) ;
 int CONFIG_SPI_SLAVE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 int device_initialize (TYPE_1__*) ;
 int dma_get_cache_alignment () ;
 struct spi_controller* kzalloc (unsigned int,int ) ;
 int pm_suspend_ignore_children (TYPE_1__*,int) ;
 int spi_controller_set_devdata (struct spi_controller*,void*) ;
 int spi_master_class ;
 int spi_slave_class ;

struct spi_controller *__spi_alloc_controller(struct device *dev,
           unsigned int size, bool slave)
{
 struct spi_controller *ctlr;
 size_t ctlr_size = ALIGN(sizeof(*ctlr), dma_get_cache_alignment());

 if (!dev)
  return ((void*)0);

 ctlr = kzalloc(size + ctlr_size, GFP_KERNEL);
 if (!ctlr)
  return ((void*)0);

 device_initialize(&ctlr->dev);
 ctlr->bus_num = -1;
 ctlr->num_chipselect = 1;
 ctlr->slave = slave;
 if (IS_ENABLED(CONFIG_SPI_SLAVE) && slave)
  ctlr->dev.class = &spi_slave_class;
 else
  ctlr->dev.class = &spi_master_class;
 ctlr->dev.parent = dev;
 pm_suspend_ignore_children(&ctlr->dev, 1);
 spi_controller_set_devdata(ctlr, (void *)ctlr + ctlr_size);

 return ctlr;
}
