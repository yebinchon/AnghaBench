
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * txrx_word; int chipselect; struct spi_master* master; } ;
struct xtfpga_spi {TYPE_2__ bitbang; int regs; } ;
struct TYPE_6__ {int of_node; } ;
struct spi_master {TYPE_1__ dev; int bus_num; int bits_per_word_mask; int flags; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {int of_node; int id; } ;
struct platform_device {TYPE_3__ dev; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_MASTER_NO_RX ;
 size_t SPI_MODE_0 ;
 int XTFPGA_SPI_BUSY ;
 int XTFPGA_SPI_START ;
 int dev_err (TYPE_3__*,char*) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 struct spi_master* spi_alloc_master (TYPE_3__*,int) ;
 int spi_bitbang_start (TYPE_2__*) ;
 struct xtfpga_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int usleep_range (int,int) ;
 int xtfpga_spi_chipselect ;
 scalar_t__ xtfpga_spi_read32 (struct xtfpga_spi*,int ) ;
 int xtfpga_spi_txrx_word ;
 int xtfpga_spi_write32 (struct xtfpga_spi*,int ,int ) ;

__attribute__((used)) static int xtfpga_spi_probe(struct platform_device *pdev)
{
 struct xtfpga_spi *xspi;
 struct resource *mem;
 int ret;
 struct spi_master *master;

 master = spi_alloc_master(&pdev->dev, sizeof(struct xtfpga_spi));
 if (!master)
  return -ENOMEM;

 master->flags = SPI_MASTER_NO_RX;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(1, 16);
 master->bus_num = pdev->dev.id;
 master->dev.of_node = pdev->dev.of_node;

 xspi = spi_master_get_devdata(master);
 xspi->bitbang.master = master;
 xspi->bitbang.chipselect = xtfpga_spi_chipselect;
 xspi->bitbang.txrx_word[SPI_MODE_0] = xtfpga_spi_txrx_word;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!mem) {
  dev_err(&pdev->dev, "No memory resource\n");
  ret = -ENODEV;
  goto err;
 }
 xspi->regs = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(xspi->regs)) {
  ret = PTR_ERR(xspi->regs);
  goto err;
 }

 xtfpga_spi_write32(xspi, XTFPGA_SPI_START, 0);
 usleep_range(1000, 2000);
 if (xtfpga_spi_read32(xspi, XTFPGA_SPI_BUSY)) {
  dev_err(&pdev->dev, "Device stuck in busy state\n");
  ret = -EBUSY;
  goto err;
 }

 ret = spi_bitbang_start(&xspi->bitbang);
 if (ret < 0) {
  dev_err(&pdev->dev, "spi_bitbang_start failed\n");
  goto err;
 }

 platform_set_drvdata(pdev, master);
 return 0;
err:
 spi_master_put(master);
 return ret;
}
