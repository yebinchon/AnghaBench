
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int of_node; } ;
struct spi_master {int mode_bits; int num_chipselect; TYPE_1__ dev; int bits_per_word_mask; int transfer_one; int set_cs; int setup; int bus_num; int flags; } ;
struct spi_lp8841_rtc {int iomem; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int id; } ;


 int ENOMEM ;
 int PTR_ERR_OR_ZERO (int ) ;
 int SPI_3WIRE ;
 int SPI_BPW_MASK (int) ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;
 int SPI_MASTER_HALF_DUPLEX ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_spi_register_master (TYPE_2__*,struct spi_master*) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int) ;
 int spi_lp8841_rtc_set_cs ;
 int spi_lp8841_rtc_setup ;
 int spi_lp8841_rtc_transfer_one ;
 struct spi_lp8841_rtc* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int
spi_lp8841_rtc_probe(struct platform_device *pdev)
{
 int ret;
 struct spi_master *master;
 struct spi_lp8841_rtc *data;

 master = spi_alloc_master(&pdev->dev, sizeof(*data));
 if (!master)
  return -ENOMEM;
 platform_set_drvdata(pdev, master);

 master->flags = SPI_MASTER_HALF_DUPLEX;
 master->mode_bits = SPI_CS_HIGH | SPI_3WIRE | SPI_LSB_FIRST;

 master->bus_num = pdev->id;
 master->num_chipselect = 1;
 master->setup = spi_lp8841_rtc_setup;
 master->set_cs = spi_lp8841_rtc_set_cs;
 master->transfer_one = spi_lp8841_rtc_transfer_one;
 master->bits_per_word_mask = SPI_BPW_MASK(8);




 data = spi_master_get_devdata(master);

 data->iomem = devm_platform_ioremap_resource(pdev, 0);
 ret = PTR_ERR_OR_ZERO(data->iomem);
 if (ret) {
  dev_err(&pdev->dev, "failed to get IO address\n");
  goto err_put_master;
 }


 ret = devm_spi_register_master(&pdev->dev, master);
 if (ret) {
  dev_err(&pdev->dev, "cannot register spi master\n");
  goto err_put_master;
 }

 return ret;


err_put_master:
 spi_master_put(master);

 return ret;
}
