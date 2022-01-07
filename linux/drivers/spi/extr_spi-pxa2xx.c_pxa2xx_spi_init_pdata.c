
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ssp_device {int type; int port_id; struct platform_device* pdev; int irq; int clk; int mmio_base; int phys_base; } ;
struct resource {int start; } ;
struct pxa2xx_spi_controller {int num_chipselect; int enable_dma; int dma_burst_size; int is_slave; int dma_filter; int rx_param; int tx_param; struct ssp_device ssp; } ;
struct TYPE_9__ {scalar_t__ of_node; int parent; TYPE_1__* driver; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct of_device_id {scalar_t__ data; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct acpi_device {int dummy; } ;
typedef enum pxa_ssp_type { ____Placeholder_pxa_ssp_type } pxa_ssp_type ;
struct TYPE_8__ {int acpi_match_table; int of_match_table; } ;


 struct acpi_device* ACPI_COMPANION (TYPE_2__*) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 struct acpi_device_id* acpi_match_device (int ,TYPE_2__*) ;
 scalar_t__ dev_is_pci (int ) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct pxa2xx_spi_controller* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int of_property_read_bool (scalar_t__,char*) ;
 struct pci_device_id* pci_match_id (int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pxa2xx_spi_get_port_id (struct acpi_device*) ;
 int pxa2xx_spi_idma_filter ;
 int pxa2xx_spi_pci_compound_match ;
 int to_pci_dev (int ) ;

__attribute__((used)) static struct pxa2xx_spi_controller *
pxa2xx_spi_init_pdata(struct platform_device *pdev)
{
 struct pxa2xx_spi_controller *pdata;
 struct acpi_device *adev;
 struct ssp_device *ssp;
 struct resource *res;
 const struct acpi_device_id *adev_id = ((void*)0);
 const struct pci_device_id *pcidev_id = ((void*)0);
 const struct of_device_id *of_id = ((void*)0);
 enum pxa_ssp_type type;

 adev = ACPI_COMPANION(&pdev->dev);

 if (pdev->dev.of_node)
  of_id = of_match_device(pdev->dev.driver->of_match_table,
     &pdev->dev);
 else if (dev_is_pci(pdev->dev.parent))
  pcidev_id = pci_match_id(pxa2xx_spi_pci_compound_match,
      to_pci_dev(pdev->dev.parent));
 else if (adev)
  adev_id = acpi_match_device(pdev->dev.driver->acpi_match_table,
         &pdev->dev);
 else
  return ((void*)0);

 if (adev_id)
  type = (enum pxa_ssp_type)adev_id->driver_data;
 else if (pcidev_id)
  type = (enum pxa_ssp_type)pcidev_id->driver_data;
 else if (of_id)
  type = (enum pxa_ssp_type)of_id->data;
 else
  return ((void*)0);

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return ((void*)0);

 ssp = &pdata->ssp;

 ssp->phys_base = res->start;
 ssp->mmio_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ssp->mmio_base))
  return ((void*)0);
 ssp->clk = devm_clk_get(&pdev->dev, ((void*)0));
 ssp->irq = platform_get_irq(pdev, 0);
 ssp->type = type;
 ssp->pdev = pdev;
 ssp->port_id = pxa2xx_spi_get_port_id(adev);

 pdata->is_slave = of_property_read_bool(pdev->dev.of_node, "spi-slave");
 pdata->num_chipselect = 1;
 pdata->enable_dma = 1;
 pdata->dma_burst_size = 1;

 return pdata;
}
