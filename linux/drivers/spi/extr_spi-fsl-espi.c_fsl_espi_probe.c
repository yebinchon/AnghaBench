
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct spi_master {int mode_bits; int auto_runtime_pm; unsigned int num_chipselect; void* max_speed_hz; void* min_speed_hz; int max_message_size; int transfer_one_message; int cleanup; int setup; int bits_per_word_mask; TYPE_1__ dev; } ;
struct resource {int dummy; } ;
struct fsl_espi {int spibrg; int reg_base; int done; struct device* dev; int lock; } ;
struct device {int of_node; } ;


 int AUTOSUSPEND_TIMEOUT ;
 void* DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LOOP ;
 int SPI_LSB_FIRST ;
 int SPI_RX_DUAL ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ,unsigned int) ;
 int dev_set_drvdata (struct device*,struct spi_master*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int devm_request_irq (struct device*,unsigned int,int ,int ,char*,struct fsl_espi*) ;
 int devm_spi_register_master (struct device*,struct spi_master*) ;
 int fsl_espi_cleanup ;
 int fsl_espi_do_one_msg ;
 int fsl_espi_init_regs (struct device*,int) ;
 int fsl_espi_irq ;
 int fsl_espi_max_message_size ;
 int fsl_espi_setup ;
 int fsl_get_sys_freq () ;
 int init_completion (int *) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_set_suspended (struct device*) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 struct spi_master* spi_alloc_master (struct device*,int) ;
 struct fsl_espi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int fsl_espi_probe(struct device *dev, struct resource *mem,
     unsigned int irq, unsigned int num_cs)
{
 struct spi_master *master;
 struct fsl_espi *espi;
 int ret;

 master = spi_alloc_master(dev, sizeof(struct fsl_espi));
 if (!master)
  return -ENOMEM;

 dev_set_drvdata(dev, master);

 master->mode_bits = SPI_RX_DUAL | SPI_CPOL | SPI_CPHA | SPI_CS_HIGH |
       SPI_LSB_FIRST | SPI_LOOP;
 master->dev.of_node = dev->of_node;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(4, 16);
 master->setup = fsl_espi_setup;
 master->cleanup = fsl_espi_cleanup;
 master->transfer_one_message = fsl_espi_do_one_msg;
 master->auto_runtime_pm = 1;
 master->max_message_size = fsl_espi_max_message_size;
 master->num_chipselect = num_cs;

 espi = spi_master_get_devdata(master);
 spin_lock_init(&espi->lock);

 espi->dev = dev;
 espi->spibrg = fsl_get_sys_freq();
 if (espi->spibrg == -1) {
  dev_err(dev, "Can't get sys frequency!\n");
  ret = -EINVAL;
  goto err_probe;
 }

 master->min_speed_hz = DIV_ROUND_UP(espi->spibrg, 4 * 16 * 16);
 master->max_speed_hz = DIV_ROUND_UP(espi->spibrg, 4);

 init_completion(&espi->done);

 espi->reg_base = devm_ioremap_resource(dev, mem);
 if (IS_ERR(espi->reg_base)) {
  ret = PTR_ERR(espi->reg_base);
  goto err_probe;
 }


 ret = devm_request_irq(dev, irq, fsl_espi_irq, 0, "fsl_espi", espi);
 if (ret)
  goto err_probe;

 fsl_espi_init_regs(dev, 1);

 pm_runtime_set_autosuspend_delay(dev, AUTOSUSPEND_TIMEOUT);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);

 ret = devm_spi_register_master(dev, master);
 if (ret < 0)
  goto err_pm;

 dev_info(dev, "at 0x%p (irq = %u)\n", espi->reg_base, irq);

 pm_runtime_mark_last_busy(dev);
 pm_runtime_put_autosuspend(dev);

 return 0;

err_pm:
 pm_runtime_put_noidle(dev);
 pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);
err_probe:
 spi_master_put(master);
 return ret;
}
