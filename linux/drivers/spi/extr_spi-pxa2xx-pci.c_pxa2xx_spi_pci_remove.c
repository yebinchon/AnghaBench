
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clk; } ;
struct pxa2xx_spi_controller {TYPE_1__ ssp; } ;
struct platform_device {int dev; } ;
struct pci_dev {int dummy; } ;


 int clk_unregister (int ) ;
 struct pxa2xx_spi_controller* dev_get_platdata (int *) ;
 struct platform_device* pci_get_drvdata (struct pci_dev*) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static void pxa2xx_spi_pci_remove(struct pci_dev *dev)
{
 struct platform_device *pdev = pci_get_drvdata(dev);
 struct pxa2xx_spi_controller *spi_pdata;

 spi_pdata = dev_get_platdata(&pdev->dev);

 platform_device_unregister(pdev);
 clk_unregister(spi_pdata->ssp.clk);
}
