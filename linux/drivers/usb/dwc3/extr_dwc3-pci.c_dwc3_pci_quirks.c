
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; scalar_t__ device; int dev; } ;
struct gpio_desc {int dummy; } ;
struct dwc3_pci {int has_dsm_for_pm; int guid; struct pci_dev* pci; } ;


 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 scalar_t__ PCI_DEVICE_ID_INTEL_BXT ;
 scalar_t__ PCI_DEVICE_ID_INTEL_BXT_M ;
 scalar_t__ PCI_DEVICE_ID_INTEL_BYT ;
 int PCI_INTEL_BXT_DSM_GUID ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 int PTR_ERR (struct gpio_desc*) ;
 int acpi_dwc3_byt_gpios ;
 int dev_dbg (int *,char*) ;
 int devm_acpi_dev_add_driver_gpios (int *,int ) ;
 int dwc3_byt_enable_ulpi_refclock (struct pci_dev*) ;
 int gpiod_add_lookup_table (int *) ;
 struct gpio_desc* gpiod_get_optional (int *,char*,int ) ;
 int gpiod_put (struct gpio_desc*) ;
 int gpiod_set_value_cansleep (struct gpio_desc*,int) ;
 int guid_parse (int ,int *) ;
 int platform_bytcr_gpios ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dwc3_pci_quirks(struct dwc3_pci *dwc)
{
 struct pci_dev *pdev = dwc->pci;

 if (pdev->vendor == PCI_VENDOR_ID_INTEL) {
  if (pdev->device == PCI_DEVICE_ID_INTEL_BXT ||
    pdev->device == PCI_DEVICE_ID_INTEL_BXT_M) {
   guid_parse(PCI_INTEL_BXT_DSM_GUID, &dwc->guid);
   dwc->has_dsm_for_pm = 1;
  }

  if (pdev->device == PCI_DEVICE_ID_INTEL_BYT) {
   struct gpio_desc *gpio;
   int ret;


   ret = dwc3_byt_enable_ulpi_refclock(pdev);
   if (ret)
    return ret;

   ret = devm_acpi_dev_add_driver_gpios(&pdev->dev,
     acpi_dwc3_byt_gpios);
   if (ret)
    dev_dbg(&pdev->dev, "failed to add mapping table\n");






   gpiod_add_lookup_table(&platform_bytcr_gpios);






   gpio = gpiod_get_optional(&pdev->dev, "cs", GPIOD_OUT_LOW);
   if (IS_ERR(gpio))
    return PTR_ERR(gpio);

   gpiod_set_value_cansleep(gpio, 1);
   gpiod_put(gpio);

   gpio = gpiod_get_optional(&pdev->dev, "reset", GPIOD_OUT_LOW);
   if (IS_ERR(gpio))
    return PTR_ERR(gpio);

   if (gpio) {
    gpiod_set_value_cansleep(gpio, 1);
    gpiod_put(gpio);
    usleep_range(10000, 11000);
   }
  }
 }

 return 0;
}
