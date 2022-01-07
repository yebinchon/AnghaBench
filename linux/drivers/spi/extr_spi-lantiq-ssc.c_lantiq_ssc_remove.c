
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lantiq_ssc_spi {int fpi_clk; int spi_clk; int wq; } ;


 int LTQ_SPI_CLC ;
 int LTQ_SPI_IRNEN ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int destroy_workqueue (int ) ;
 int hw_enter_config_mode (struct lantiq_ssc_spi*) ;
 int lantiq_ssc_writel (struct lantiq_ssc_spi*,int ,int ) ;
 struct lantiq_ssc_spi* platform_get_drvdata (struct platform_device*) ;
 int rx_fifo_flush (struct lantiq_ssc_spi*) ;
 int tx_fifo_flush (struct lantiq_ssc_spi*) ;

__attribute__((used)) static int lantiq_ssc_remove(struct platform_device *pdev)
{
 struct lantiq_ssc_spi *spi = platform_get_drvdata(pdev);

 lantiq_ssc_writel(spi, 0, LTQ_SPI_IRNEN);
 lantiq_ssc_writel(spi, 0, LTQ_SPI_CLC);
 rx_fifo_flush(spi);
 tx_fifo_flush(spi);
 hw_enter_config_mode(spi);

 destroy_workqueue(spi->wq);
 clk_disable_unprepare(spi->spi_clk);
 clk_put(spi->fpi_clk);

 return 0;
}
