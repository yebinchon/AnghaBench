
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txrx_bufs; int setup_transfer; int chipselect; struct spi_master* master; } ;
struct uwire_spi {TYPE_1__ bitbang; int ck; } ;
struct spi_master {int mode_bits; int bus_num; int num_chipselect; int cleanup; int setup; int flags; int bits_per_word_mask; } ;
struct platform_device {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_MASTER_HALF_DUPLEX ;
 int UWIRE_BASE_PHYS ;
 int UWIRE_IO_SIZE ;
 int UWIRE_SR3 ;
 int clk_enable (int ) ;
 scalar_t__ cpu_is_omap7xx () ;
 int dev_dbg (int *,char*) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap (int *,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uwire_spi*) ;
 struct spi_master* spi_alloc_master (int *,int) ;
 int spi_bitbang_start (TYPE_1__*) ;
 struct uwire_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int uwire_base ;
 int uwire_chipselect ;
 int uwire_cleanup ;
 int uwire_idx_shift ;
 int uwire_off (struct uwire_spi*) ;
 int uwire_setup ;
 int uwire_setup_transfer ;
 int uwire_txrx ;
 int uwire_write_reg (int ,int) ;

__attribute__((used)) static int uwire_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct uwire_spi *uwire;
 int status;

 master = spi_alloc_master(&pdev->dev, sizeof *uwire);
 if (!master)
  return -ENODEV;

 uwire = spi_master_get_devdata(master);

 uwire_base = devm_ioremap(&pdev->dev, UWIRE_BASE_PHYS, UWIRE_IO_SIZE);
 if (!uwire_base) {
  dev_dbg(&pdev->dev, "can't ioremap UWIRE\n");
  spi_master_put(master);
  return -ENOMEM;
 }

 platform_set_drvdata(pdev, uwire);

 uwire->ck = devm_clk_get(&pdev->dev, "fck");
 if (IS_ERR(uwire->ck)) {
  status = PTR_ERR(uwire->ck);
  dev_dbg(&pdev->dev, "no functional clock?\n");
  spi_master_put(master);
  return status;
 }
 clk_enable(uwire->ck);

 if (cpu_is_omap7xx())
  uwire_idx_shift = 1;
 else
  uwire_idx_shift = 2;

 uwire_write_reg(UWIRE_SR3, 1);


 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(1, 16);
 master->flags = SPI_MASTER_HALF_DUPLEX;

 master->bus_num = 2;
 master->num_chipselect = 4;
 master->setup = uwire_setup;
 master->cleanup = uwire_cleanup;

 uwire->bitbang.master = master;
 uwire->bitbang.chipselect = uwire_chipselect;
 uwire->bitbang.setup_transfer = uwire_setup_transfer;
 uwire->bitbang.txrx_bufs = uwire_txrx;

 status = spi_bitbang_start(&uwire->bitbang);
 if (status < 0) {
  uwire_off(uwire);
 }
 return status;
}
