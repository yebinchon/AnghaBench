
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int fwnode; int of_node; } ;
struct spi_controller {int use_gpio_descriptors; int mode_bits; struct device dev; int can_dma; scalar_t__ set_cs; int flags; int max_speed_hz; int handle_err; int transfer_one; int cleanup; int setup; int num_chipselect; int bus_num; int bits_per_word_mask; } ;
struct dw_spi {int irq; TYPE_1__* dma_ops; scalar_t__ dma_inited; scalar_t__ set_cs; int max_freq; int num_cs; int bus_num; scalar_t__ paddr; scalar_t__ dma_addr; int type; struct spi_controller* master; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int (* dma_init ) (struct dw_spi*) ;int (* dma_exit ) (struct dw_spi*) ;int can_dma; } ;


 int BUG_ON (int ) ;
 scalar_t__ DW_SPI_DR ;
 int ENOMEM ;
 int IRQF_SHARED ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LOOP ;
 int SPI_MASTER_GPIO_SS ;
 int SSI_MOTO_SPI ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int devm_spi_register_controller (struct device*,struct spi_controller*) ;
 int dw_spi_cleanup ;
 int dw_spi_debugfs_init (struct dw_spi*) ;
 int dw_spi_handle_err ;
 int dw_spi_irq ;
 scalar_t__ dw_spi_set_cs ;
 int dw_spi_setup ;
 int dw_spi_transfer_one ;
 int free_irq (int ,struct spi_controller*) ;
 int request_irq (int ,int ,int ,int ,struct spi_controller*) ;
 struct spi_controller* spi_alloc_master (struct device*,int ) ;
 int spi_controller_put (struct spi_controller*) ;
 int spi_controller_set_devdata (struct spi_controller*,struct dw_spi*) ;
 int spi_enable_chip (struct dw_spi*,int ) ;
 int spi_hw_init (struct device*,struct dw_spi*) ;
 int stub1 (struct dw_spi*) ;
 int stub2 (struct dw_spi*) ;

int dw_spi_add_host(struct device *dev, struct dw_spi *dws)
{
 struct spi_controller *master;
 int ret;

 BUG_ON(dws == ((void*)0));

 master = spi_alloc_master(dev, 0);
 if (!master)
  return -ENOMEM;

 dws->master = master;
 dws->type = SSI_MOTO_SPI;
 dws->dma_inited = 0;
 dws->dma_addr = (dma_addr_t)(dws->paddr + DW_SPI_DR);

 spi_controller_set_devdata(master, dws);

 ret = request_irq(dws->irq, dw_spi_irq, IRQF_SHARED, dev_name(dev),
     master);
 if (ret < 0) {
  dev_err(dev, "can not get IRQ\n");
  goto err_free_master;
 }

 master->use_gpio_descriptors = 1;
 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(4, 16);
 master->bus_num = dws->bus_num;
 master->num_chipselect = dws->num_cs;
 master->setup = dw_spi_setup;
 master->cleanup = dw_spi_cleanup;
 master->set_cs = dw_spi_set_cs;
 master->transfer_one = dw_spi_transfer_one;
 master->handle_err = dw_spi_handle_err;
 master->max_speed_hz = dws->max_freq;
 master->dev.of_node = dev->of_node;
 master->dev.fwnode = dev->fwnode;
 master->flags = SPI_MASTER_GPIO_SS;

 if (dws->set_cs)
  master->set_cs = dws->set_cs;


 spi_hw_init(dev, dws);

 if (dws->dma_ops && dws->dma_ops->dma_init) {
  ret = dws->dma_ops->dma_init(dws);
  if (ret) {
   dev_warn(dev, "DMA init failed\n");
   dws->dma_inited = 0;
  } else {
   master->can_dma = dws->dma_ops->can_dma;
  }
 }

 ret = devm_spi_register_controller(dev, master);
 if (ret) {
  dev_err(&master->dev, "problem registering spi master\n");
  goto err_dma_exit;
 }

 dw_spi_debugfs_init(dws);
 return 0;

err_dma_exit:
 if (dws->dma_ops && dws->dma_ops->dma_exit)
  dws->dma_ops->dma_exit(dws);
 spi_enable_chip(dws, 0);
 free_irq(dws->irq, master);
err_free_master:
 spi_controller_put(master);
 return ret;
}
