
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_qspi {int pclk; int refclk; } ;
struct platform_device {int dummy; } ;


 int ZYNQ_QSPI_ENABLE_OFFSET ;
 int clk_disable_unprepare (int ) ;
 struct zynq_qspi* platform_get_drvdata (struct platform_device*) ;
 int zynq_qspi_write (struct zynq_qspi*,int ,int ) ;

__attribute__((used)) static int zynq_qspi_remove(struct platform_device *pdev)
{
 struct zynq_qspi *xqspi = platform_get_drvdata(pdev);

 zynq_qspi_write(xqspi, ZYNQ_QSPI_ENABLE_OFFSET, 0);

 clk_disable_unprepare(xqspi->refclk);
 clk_disable_unprepare(xqspi->pclk);

 return 0;
}
