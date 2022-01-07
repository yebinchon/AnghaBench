
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct uniphier_spi_priv {int is_save_param; int clk; int xfer_done; int base; struct spi_master* master; } ;
struct TYPE_7__ {int of_node; } ;
struct spi_master {int mode_bits; int num_chipselect; int unprepare_transfer_hardware; int prepare_transfer_hardware; int transfer_one; int set_cs; int bits_per_word_mask; int bus_num; TYPE_1__ dev; void* min_speed_hz; void* max_speed_hz; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int id; } ;


 void* DIV_ROUND_UP (unsigned long,int ) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;
 int SSI_MAX_CLK_DIVIDER ;
 int SSI_MIN_CLK_DIVIDER ;
 int clk_disable_unprepare (int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,char*,struct uniphier_spi_priv*) ;
 int devm_spi_register_master (TYPE_2__*,struct spi_master*) ;
 int init_completion (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int) ;
 struct uniphier_spi_priv* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int uniphier_spi_handler ;
 int uniphier_spi_prepare_transfer_hardware ;
 int uniphier_spi_set_cs ;
 int uniphier_spi_transfer_one ;
 int uniphier_spi_unprepare_transfer_hardware ;

__attribute__((used)) static int uniphier_spi_probe(struct platform_device *pdev)
{
 struct uniphier_spi_priv *priv;
 struct spi_master *master;
 unsigned long clk_rate;
 int irq;
 int ret;

 master = spi_alloc_master(&pdev->dev, sizeof(*priv));
 if (!master)
  return -ENOMEM;

 platform_set_drvdata(pdev, master);

 priv = spi_master_get_devdata(master);
 priv->master = master;
 priv->is_save_param = 0;

 priv->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->base)) {
  ret = PTR_ERR(priv->base);
  goto out_master_put;
 }

 priv->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  ret = PTR_ERR(priv->clk);
  goto out_master_put;
 }

 ret = clk_prepare_enable(priv->clk);
 if (ret)
  goto out_master_put;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  ret = irq;
  goto out_disable_clk;
 }

 ret = devm_request_irq(&pdev->dev, irq, uniphier_spi_handler,
          0, "uniphier-spi", priv);
 if (ret) {
  dev_err(&pdev->dev, "failed to request IRQ\n");
  goto out_disable_clk;
 }

 init_completion(&priv->xfer_done);

 clk_rate = clk_get_rate(priv->clk);

 master->max_speed_hz = DIV_ROUND_UP(clk_rate, SSI_MIN_CLK_DIVIDER);
 master->min_speed_hz = DIV_ROUND_UP(clk_rate, SSI_MAX_CLK_DIVIDER);
 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST;
 master->dev.of_node = pdev->dev.of_node;
 master->bus_num = pdev->id;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(1, 32);

 master->set_cs = uniphier_spi_set_cs;
 master->transfer_one = uniphier_spi_transfer_one;
 master->prepare_transfer_hardware
    = uniphier_spi_prepare_transfer_hardware;
 master->unprepare_transfer_hardware
    = uniphier_spi_unprepare_transfer_hardware;
 master->num_chipselect = 1;

 ret = devm_spi_register_master(&pdev->dev, master);
 if (ret)
  goto out_disable_clk;

 return 0;

out_disable_clk:
 clk_disable_unprepare(priv->clk);

out_master_put:
 spi_master_put(master);
 return ret;
}
