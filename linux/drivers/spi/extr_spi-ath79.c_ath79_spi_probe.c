
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int of_node; } ;
struct spi_master {int use_gpio_descriptors; int num_chipselect; int bus_num; int cleanup; int setup; int bits_per_word_mask; TYPE_1__ dev; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct ath79_spi_platform_data {int num_chipselect; int bus_num; } ;
struct TYPE_9__ {struct spi_master* master; int flags; int * txrx_word; int chipselect; } ;
struct ath79_spi {unsigned long rrw_delay; TYPE_2__ bitbang; int clk; int base; } ;


 unsigned long ATH79_SPI_RRW_DELAY_FACTOR ;
 unsigned long DIV_ROUND_UP (int ,int ) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int MHZ ;
 int PTR_ERR (int ) ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_CS_HIGH ;
 size_t SPI_MODE_0 ;
 int ath79_spi_chipselect ;
 int ath79_spi_disable (struct ath79_spi*) ;
 int ath79_spi_enable (struct ath79_spi*) ;
 int ath79_spi_txrx_mode0 ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (TYPE_3__*,char*,unsigned long) ;
 int dev_err (TYPE_3__*,char*) ;
 struct ath79_spi_platform_data* dev_get_platdata (TYPE_3__*) ;
 int devm_clk_get (TYPE_3__*,char*) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ath79_spi*) ;
 struct spi_master* spi_alloc_master (TYPE_3__*,int) ;
 int spi_bitbang_cleanup ;
 int spi_bitbang_setup ;
 int spi_bitbang_start (TYPE_2__*) ;
 struct ath79_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int ath79_spi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct ath79_spi *sp;
 struct ath79_spi_platform_data *pdata;
 unsigned long rate;
 int ret;

 master = spi_alloc_master(&pdev->dev, sizeof(*sp));
 if (master == ((void*)0)) {
  dev_err(&pdev->dev, "failed to allocate spi master\n");
  return -ENOMEM;
 }

 sp = spi_master_get_devdata(master);
 master->dev.of_node = pdev->dev.of_node;
 platform_set_drvdata(pdev, sp);

 pdata = dev_get_platdata(&pdev->dev);

 master->use_gpio_descriptors = 1;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(1, 32);
 master->setup = spi_bitbang_setup;
 master->cleanup = spi_bitbang_cleanup;
 if (pdata) {
  master->bus_num = pdata->bus_num;
  master->num_chipselect = pdata->num_chipselect;
 }

 sp->bitbang.master = master;
 sp->bitbang.chipselect = ath79_spi_chipselect;
 sp->bitbang.txrx_word[SPI_MODE_0] = ath79_spi_txrx_mode0;
 sp->bitbang.flags = SPI_CS_HIGH;

 sp->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(sp->base)) {
  ret = PTR_ERR(sp->base);
  goto err_put_master;
 }

 sp->clk = devm_clk_get(&pdev->dev, "ahb");
 if (IS_ERR(sp->clk)) {
  ret = PTR_ERR(sp->clk);
  goto err_put_master;
 }

 ret = clk_prepare_enable(sp->clk);
 if (ret)
  goto err_put_master;

 rate = DIV_ROUND_UP(clk_get_rate(sp->clk), MHZ);
 if (!rate) {
  ret = -EINVAL;
  goto err_clk_disable;
 }

 sp->rrw_delay = ATH79_SPI_RRW_DELAY_FACTOR / rate;
 dev_dbg(&pdev->dev, "register read/write delay is %u nsecs\n",
  sp->rrw_delay);

 ath79_spi_enable(sp);
 ret = spi_bitbang_start(&sp->bitbang);
 if (ret)
  goto err_disable;

 return 0;

err_disable:
 ath79_spi_disable(sp);
err_clk_disable:
 clk_disable_unprepare(sp->clk);
err_put_master:
 spi_master_put(sp->bitbang.master);

 return ret;
}
