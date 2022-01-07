
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_spi_priv {int clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct uniphier_spi_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int uniphier_spi_remove(struct platform_device *pdev)
{
 struct uniphier_spi_priv *priv = platform_get_drvdata(pdev);

 clk_disable_unprepare(priv->clk);

 return 0;
}
