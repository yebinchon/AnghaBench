
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_spi {int src_clk; struct clk* clk; } ;
struct platform_device {int dev; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int SPRD_SPI_DEFAULT_SOURCE ;
 int clk_get_rate (struct clk*) ;
 int clk_set_parent (struct clk*,struct clk*) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 void* devm_clk_get (int *,char*) ;

__attribute__((used)) static int sprd_spi_clk_init(struct platform_device *pdev, struct sprd_spi *ss)
{
 struct clk *clk_spi, *clk_parent;

 clk_spi = devm_clk_get(&pdev->dev, "spi");
 if (IS_ERR(clk_spi)) {
  dev_warn(&pdev->dev, "can't get the spi clock\n");
  clk_spi = ((void*)0);
 }

 clk_parent = devm_clk_get(&pdev->dev, "source");
 if (IS_ERR(clk_parent)) {
  dev_warn(&pdev->dev, "can't get the source clock\n");
  clk_parent = ((void*)0);
 }

 ss->clk = devm_clk_get(&pdev->dev, "enable");
 if (IS_ERR(ss->clk)) {
  dev_err(&pdev->dev, "can't get the enable clock\n");
  return PTR_ERR(ss->clk);
 }

 if (!clk_set_parent(clk_spi, clk_parent))
  ss->src_clk = clk_get_rate(clk_spi);
 else
  ss->src_clk = SPRD_SPI_DEFAULT_SOURCE;

 return 0;
}
