
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct platform_device {int dummy; } ;
struct atmel_qspi {int pclk; int qspick; scalar_t__ regs; } ;


 scalar_t__ QSPI_CR ;
 int QSPI_CR_QSPIDIS ;
 int clk_disable_unprepare (int ) ;
 struct spi_controller* platform_get_drvdata (struct platform_device*) ;
 struct atmel_qspi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_unregister_controller (struct spi_controller*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int atmel_qspi_remove(struct platform_device *pdev)
{
 struct spi_controller *ctrl = platform_get_drvdata(pdev);
 struct atmel_qspi *aq = spi_controller_get_devdata(ctrl);

 spi_unregister_controller(ctrl);
 writel_relaxed(QSPI_CR_QSPIDIS, aq->regs + QSPI_CR);
 clk_disable_unprepare(aq->qspick);
 clk_disable_unprepare(aq->pclk);
 return 0;
}
