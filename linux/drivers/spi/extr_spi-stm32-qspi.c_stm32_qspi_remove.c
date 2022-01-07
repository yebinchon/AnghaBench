
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_qspi {int dummy; } ;
struct platform_device {int dummy; } ;


 struct stm32_qspi* platform_get_drvdata (struct platform_device*) ;
 int stm32_qspi_release (struct stm32_qspi*) ;

__attribute__((used)) static int stm32_qspi_remove(struct platform_device *pdev)
{
 struct stm32_qspi *qspi = platform_get_drvdata(pdev);

 stm32_qspi_release(qspi);
 return 0;
}
