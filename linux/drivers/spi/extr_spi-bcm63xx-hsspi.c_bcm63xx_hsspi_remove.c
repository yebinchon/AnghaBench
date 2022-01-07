
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct bcm63xx_hsspi {int clk; int pll_clk; scalar_t__ regs; } ;


 scalar_t__ HSSPI_INT_MASK_REG ;
 int __raw_writel (int ,scalar_t__) ;
 int clk_disable_unprepare (int ) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 struct bcm63xx_hsspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int bcm63xx_hsspi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct bcm63xx_hsspi *bs = spi_master_get_devdata(master);


 __raw_writel(0, bs->regs + HSSPI_INT_MASK_REG);
 clk_disable_unprepare(bs->pll_clk);
 clk_disable_unprepare(bs->clk);

 return 0;
}
