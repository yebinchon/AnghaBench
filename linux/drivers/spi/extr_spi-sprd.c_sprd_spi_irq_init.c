
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_spi {scalar_t__ irq; } ;
struct platform_device {int dev; int name; } ;


 int dev_err (int *,char*,int,int) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct sprd_spi*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int sprd_spi_handle_irq ;

__attribute__((used)) static int sprd_spi_irq_init(struct platform_device *pdev, struct sprd_spi *ss)
{
 int ret;

 ss->irq = platform_get_irq(pdev, 0);
 if (ss->irq < 0)
  return ss->irq;

 ret = devm_request_irq(&pdev->dev, ss->irq, sprd_spi_handle_irq,
    0, pdev->name, ss);
 if (ret)
  dev_err(&pdev->dev, "failed to request spi irq %d, ret = %d\n",
   ss->irq, ret);

 return ret;
}
