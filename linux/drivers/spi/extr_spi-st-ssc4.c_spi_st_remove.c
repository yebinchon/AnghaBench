
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_st {int clk; } ;
struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int pinctrl_pm_select_sleep_state (int *) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 struct spi_st* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int spi_st_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct spi_st *spi_st = spi_master_get_devdata(master);

 clk_disable_unprepare(spi_st->clk);

 pinctrl_pm_select_sleep_state(&pdev->dev);

 return 0;
}
