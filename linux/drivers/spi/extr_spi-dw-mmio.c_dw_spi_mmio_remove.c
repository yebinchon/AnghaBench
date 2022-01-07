
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_spi_mmio {int clk; int pclk; int dws; } ;


 int clk_disable_unprepare (int ) ;
 int dw_spi_remove_host (int *) ;
 struct dw_spi_mmio* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int dw_spi_mmio_remove(struct platform_device *pdev)
{
 struct dw_spi_mmio *dwsmmio = platform_get_drvdata(pdev);

 dw_spi_remove_host(&dwsmmio->dws);
 clk_disable_unprepare(dwsmmio->pclk);
 clk_disable_unprepare(dwsmmio->clk);

 return 0;
}
