
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int of_node; } ;
struct spi_master {int use_gpio_descriptors; int bus_num; int mode_bits; int transfer_one; int prepare_message; TYPE_1__ dev; int bits_per_word_mask; } ;
struct spi_clps711x_data {int syncio; int syscon; int spi_clk; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_CPHA ;
 int SPI_CS_HIGH ;
 int SYSCON3_ADCCON ;
 int SYSCON_OFFSET ;
 int dev_name (TYPE_2__*) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct spi_master*) ;
 int devm_spi_register_master (TYPE_2__*,struct spi_master*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int readl (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int) ;
 int spi_clps711x_isr ;
 int spi_clps711x_prepare_message ;
 int spi_clps711x_transfer_one ;
 struct spi_clps711x_data* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int spi_clps711x_probe(struct platform_device *pdev)
{
 struct spi_clps711x_data *hw;
 struct spi_master *master;
 int irq, ret;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 master = spi_alloc_master(&pdev->dev, sizeof(*hw));
 if (!master)
  return -ENOMEM;

 master->use_gpio_descriptors = 1;
 master->bus_num = -1;
 master->mode_bits = SPI_CPHA | SPI_CS_HIGH;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(1, 8);
 master->dev.of_node = pdev->dev.of_node;
 master->prepare_message = spi_clps711x_prepare_message;
 master->transfer_one = spi_clps711x_transfer_one;

 hw = spi_master_get_devdata(master);

 hw->spi_clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(hw->spi_clk)) {
  ret = PTR_ERR(hw->spi_clk);
  goto err_out;
 }

 hw->syscon =
  syscon_regmap_lookup_by_compatible("cirrus,ep7209-syscon3");
 if (IS_ERR(hw->syscon)) {
  ret = PTR_ERR(hw->syscon);
  goto err_out;
 }

 hw->syncio = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(hw->syncio)) {
  ret = PTR_ERR(hw->syncio);
  goto err_out;
 }


 regmap_update_bits(hw->syscon, SYSCON_OFFSET, SYSCON3_ADCCON, 0);


 readl(hw->syncio);

 ret = devm_request_irq(&pdev->dev, irq, spi_clps711x_isr, 0,
          dev_name(&pdev->dev), master);
 if (ret)
  goto err_out;

 ret = devm_spi_register_master(&pdev->dev, master);
 if (!ret)
  return 0;

err_out:
 spi_master_put(master);

 return ret;
}
