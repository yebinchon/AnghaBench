
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct platform_device {int dummy; } ;
struct at91_usart_spi {int clk; } ;


 int at91_usart_spi_release_dma (struct spi_controller*) ;
 int clk_disable_unprepare (int ) ;
 struct spi_controller* platform_get_drvdata (struct platform_device*) ;
 struct at91_usart_spi* spi_master_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int at91_usart_spi_remove(struct platform_device *pdev)
{
 struct spi_controller *ctlr = platform_get_drvdata(pdev);
 struct at91_usart_spi *aus = spi_master_get_devdata(ctlr);

 at91_usart_spi_release_dma(ctlr);
 clk_disable_unprepare(aus->clk);

 return 0;
}
