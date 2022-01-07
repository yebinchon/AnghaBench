
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct davinci_spi {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int spi_davinci_get_pdata(struct platform_device *pdev,
   struct davinci_spi *dspi)
{
 return -ENODEV;
}
