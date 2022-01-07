
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct spi_st {scalar_t__ clk; scalar_t__ base; int done; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct spi_master {int bits_per_word_mask; int auto_runtime_pm; int bus_num; int transfer_one; int cleanup; int setup; int mode_bits; TYPE_1__ dev; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int name; int id; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int MODEBITS ;
 int PTR_ERR (scalar_t__) ;
 int SPI_BPW_MASK (int) ;
 scalar_t__ SSC_CTL ;
 int SSC_CTL_MS ;
 int SSC_CTL_SR ;
 scalar_t__ SSC_I2C ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (TYPE_2__*,char*,...) ;
 scalar_t__ devm_clk_get (TYPE_2__*,char*) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct spi_st*) ;
 int devm_spi_register_master (TYPE_2__*,struct spi_master*) ;
 int init_completion (int *) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 int readl_relaxed (scalar_t__) ;
 int readw_relaxed (scalar_t__) ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int) ;
 struct spi_st* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_st_cleanup ;
 int spi_st_irq ;
 int spi_st_setup ;
 int spi_st_transfer_one ;
 int udelay (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int spi_st_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct spi_master *master;
 struct spi_st *spi_st;
 int irq, ret = 0;
 u32 var;

 master = spi_alloc_master(&pdev->dev, sizeof(*spi_st));
 if (!master)
  return -ENOMEM;

 master->dev.of_node = np;
 master->mode_bits = MODEBITS;
 master->setup = spi_st_setup;
 master->cleanup = spi_st_cleanup;
 master->transfer_one = spi_st_transfer_one;
 master->bits_per_word_mask = SPI_BPW_MASK(8) | SPI_BPW_MASK(16);
 master->auto_runtime_pm = 1;
 master->bus_num = pdev->id;
 spi_st = spi_master_get_devdata(master);

 spi_st->clk = devm_clk_get(&pdev->dev, "ssc");
 if (IS_ERR(spi_st->clk)) {
  dev_err(&pdev->dev, "Unable to request clock\n");
  ret = PTR_ERR(spi_st->clk);
  goto put_master;
 }

 ret = clk_prepare_enable(spi_st->clk);
 if (ret)
  goto put_master;

 init_completion(&spi_st->done);


 spi_st->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(spi_st->base)) {
  ret = PTR_ERR(spi_st->base);
  goto clk_disable;
 }


 writel_relaxed(0x0, spi_st->base + SSC_I2C);
 var = readw_relaxed(spi_st->base + SSC_CTL);
 var |= SSC_CTL_SR;
 writel_relaxed(var, spi_st->base + SSC_CTL);

 udelay(1);
 var = readl_relaxed(spi_st->base + SSC_CTL);
 var &= ~SSC_CTL_SR;
 writel_relaxed(var, spi_st->base + SSC_CTL);


 var = readl_relaxed(spi_st->base + SSC_CTL);
 var &= ~SSC_CTL_MS;
 writel_relaxed(var, spi_st->base + SSC_CTL);

 irq = irq_of_parse_and_map(np, 0);
 if (!irq) {
  dev_err(&pdev->dev, "IRQ missing or invalid\n");
  ret = -EINVAL;
  goto clk_disable;
 }

 ret = devm_request_irq(&pdev->dev, irq, spi_st_irq, 0,
          pdev->name, spi_st);
 if (ret) {
  dev_err(&pdev->dev, "Failed to request irq %d\n", irq);
  goto clk_disable;
 }


 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 platform_set_drvdata(pdev, master);

 ret = devm_spi_register_master(&pdev->dev, master);
 if (ret) {
  dev_err(&pdev->dev, "Failed to register master\n");
  goto clk_disable;
 }

 return 0;

clk_disable:
 clk_disable_unprepare(spi_st->clk);
put_master:
 spi_master_put(master);
 return ret;
}
