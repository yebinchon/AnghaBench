
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int of_node; } ;
struct spi_master {int mode_bits; int num_chipselect; TYPE_1__ dev; int unprepare_message; int prepare_message; int handle_err; int transfer_one; int setup; int bits_per_word_mask; } ;
struct TYPE_9__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct bcm2835aux_spi {int irq; int clk; int regs; } ;


 int ENODEV ;
 int ENOMEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_NO_CS ;
 int bcm2835aux_debugfs_create (struct bcm2835aux_spi*,int ) ;
 int bcm2835aux_spi_handle_err ;
 int bcm2835aux_spi_interrupt ;
 int bcm2835aux_spi_prepare_message ;
 int bcm2835aux_spi_reset_hw (struct bcm2835aux_spi*) ;
 int bcm2835aux_spi_setup ;
 int bcm2835aux_spi_transfer_one ;
 int bcm2835aux_spi_unprepare_message ;
 int clk_disable_unprepare (int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_name (TYPE_2__*) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct spi_master*) ;
 int devm_spi_register_master (TYPE_2__*,struct spi_master*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int) ;
 struct bcm2835aux_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int bcm2835aux_spi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct bcm2835aux_spi *bs;
 unsigned long clk_hz;
 int err;

 master = spi_alloc_master(&pdev->dev, sizeof(*bs));
 if (!master)
  return -ENOMEM;

 platform_set_drvdata(pdev, master);
 master->mode_bits = (SPI_CPOL | SPI_CS_HIGH | SPI_NO_CS);
 master->bits_per_word_mask = SPI_BPW_MASK(8);
 master->num_chipselect = 1;
 master->setup = bcm2835aux_spi_setup;
 master->transfer_one = bcm2835aux_spi_transfer_one;
 master->handle_err = bcm2835aux_spi_handle_err;
 master->prepare_message = bcm2835aux_spi_prepare_message;
 master->unprepare_message = bcm2835aux_spi_unprepare_message;
 master->dev.of_node = pdev->dev.of_node;

 bs = spi_master_get_devdata(master);


 bs->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(bs->regs)) {
  err = PTR_ERR(bs->regs);
  goto out_master_put;
 }

 bs->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(bs->clk)) {
  err = PTR_ERR(bs->clk);
  dev_err(&pdev->dev, "could not get clk: %d\n", err);
  goto out_master_put;
 }

 bs->irq = platform_get_irq(pdev, 0);
 if (bs->irq <= 0) {
  err = bs->irq ? bs->irq : -ENODEV;
  goto out_master_put;
 }


 err = clk_prepare_enable(bs->clk);
 if (err) {
  dev_err(&pdev->dev, "could not prepare clock: %d\n", err);
  goto out_master_put;
 }


 clk_hz = clk_get_rate(bs->clk);
 if (!clk_hz) {
  dev_err(&pdev->dev, "clock returns 0 Hz\n");
  err = -ENODEV;
  goto out_clk_disable;
 }


 bcm2835aux_spi_reset_hw(bs);

 err = devm_request_irq(&pdev->dev, bs->irq,
          bcm2835aux_spi_interrupt,
          IRQF_SHARED,
          dev_name(&pdev->dev), master);
 if (err) {
  dev_err(&pdev->dev, "could not request IRQ: %d\n", err);
  goto out_clk_disable;
 }

 err = devm_spi_register_master(&pdev->dev, master);
 if (err) {
  dev_err(&pdev->dev, "could not register SPI master: %d\n", err);
  goto out_clk_disable;
 }

 bcm2835aux_debugfs_create(bs, dev_name(&pdev->dev));

 return 0;

out_clk_disable:
 clk_disable_unprepare(bs->clk);
out_master_put:
 spi_master_put(master);
 return err;
}
