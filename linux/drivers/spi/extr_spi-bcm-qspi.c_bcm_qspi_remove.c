
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bcm_qspi {int master; int dev_ids; int clk; } ;


 int bcm_qspi_hw_uninit (struct bcm_qspi*) ;
 int clk_disable_unprepare (int ) ;
 int kfree (int ) ;
 struct bcm_qspi* platform_get_drvdata (struct platform_device*) ;
 int spi_unregister_master (int ) ;

int bcm_qspi_remove(struct platform_device *pdev)
{
 struct bcm_qspi *qspi = platform_get_drvdata(pdev);

 bcm_qspi_hw_uninit(qspi);
 clk_disable_unprepare(qspi->clk);
 kfree(qspi->dev_ids);
 spi_unregister_master(qspi->master);

 return 0;
}
