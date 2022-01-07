
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource {char* name; int flags; int start; int end; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int irq; struct device dev; } ;
struct dwc3_haps {TYPE_2__* dwc3; struct pci_dev* pci; } ;
struct TYPE_7__ {struct device* parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;


 int ARRAY_SIZE (struct resource*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int PLATFORM_DEVID_AUTO ;
 int dev_err (struct device*,char*) ;
 struct dwc3_haps* devm_kzalloc (struct device*,int,int ) ;
 int initial_properties ;
 int memset (struct resource*,int,int) ;
 int pci_resource_end (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct dwc3_haps*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int platform_device_add (TYPE_2__*) ;
 int platform_device_add_properties (TYPE_2__*,int ) ;
 int platform_device_add_resources (TYPE_2__*,struct resource*,int) ;
 TYPE_2__* platform_device_alloc (char*,int ) ;
 int platform_device_put (TYPE_2__*) ;

__attribute__((used)) static int dwc3_haps_probe(struct pci_dev *pci,
      const struct pci_device_id *id)
{
 struct dwc3_haps *dwc;
 struct device *dev = &pci->dev;
 struct resource res[2];
 int ret;

 ret = pcim_enable_device(pci);
 if (ret) {
  dev_err(dev, "failed to enable pci device\n");
  return -ENODEV;
 }

 pci_set_master(pci);

 dwc = devm_kzalloc(dev, sizeof(*dwc), GFP_KERNEL);
 if (!dwc)
  return -ENOMEM;

 dwc->dwc3 = platform_device_alloc("dwc3", PLATFORM_DEVID_AUTO);
 if (!dwc->dwc3)
  return -ENOMEM;

 memset(res, 0x00, sizeof(struct resource) * ARRAY_SIZE(res));

 res[0].start = pci_resource_start(pci, 0);
 res[0].end = pci_resource_end(pci, 0);
 res[0].name = "dwc_usb3";
 res[0].flags = IORESOURCE_MEM;

 res[1].start = pci->irq;
 res[1].name = "dwc_usb3";
 res[1].flags = IORESOURCE_IRQ;

 ret = platform_device_add_resources(dwc->dwc3, res, ARRAY_SIZE(res));
 if (ret) {
  dev_err(dev, "couldn't add resources to dwc3 device\n");
  goto err;
 }

 dwc->pci = pci;
 dwc->dwc3->dev.parent = dev;

 ret = platform_device_add_properties(dwc->dwc3, initial_properties);
 if (ret)
  goto err;

 ret = platform_device_add(dwc->dwc3);
 if (ret) {
  dev_err(dev, "failed to register dwc3 device\n");
  goto err;
 }

 pci_set_drvdata(pci, dwc);

 return 0;
err:
 platform_device_put(dwc->dwc3);
 return ret;
}
