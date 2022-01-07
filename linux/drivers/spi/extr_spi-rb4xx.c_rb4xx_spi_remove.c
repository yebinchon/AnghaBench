
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb4xx_spi {int clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct rb4xx_spi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rb4xx_spi_remove(struct platform_device *pdev)
{
 struct rb4xx_spi *rbspi = platform_get_drvdata(pdev);

 clk_disable_unprepare(rbspi->clk);

 return 0;
}
