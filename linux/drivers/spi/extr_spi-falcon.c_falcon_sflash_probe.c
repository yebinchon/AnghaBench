
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct spi_master {TYPE_1__ dev; int transfer_one_message; int setup; int flags; int mode_bits; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct falcon_sflash {struct spi_master* master; } ;


 int ENOMEM ;
 int SPI_MASTER_HALF_DUPLEX ;
 int SPI_MODE_3 ;
 int devm_spi_register_master (TYPE_2__*,struct spi_master*) ;
 int falcon_sflash_setup ;
 int falcon_sflash_xfer_one ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int) ;
 struct falcon_sflash* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int falcon_sflash_probe(struct platform_device *pdev)
{
 struct falcon_sflash *priv;
 struct spi_master *master;
 int ret;

 master = spi_alloc_master(&pdev->dev, sizeof(*priv));
 if (!master)
  return -ENOMEM;

 priv = spi_master_get_devdata(master);
 priv->master = master;

 master->mode_bits = SPI_MODE_3;
 master->flags = SPI_MASTER_HALF_DUPLEX;
 master->setup = falcon_sflash_setup;
 master->transfer_one_message = falcon_sflash_xfer_one;
 master->dev.of_node = pdev->dev.of_node;

 ret = devm_spi_register_master(&pdev->dev, master);
 if (ret)
  spi_master_put(master);
 return ret;
}
