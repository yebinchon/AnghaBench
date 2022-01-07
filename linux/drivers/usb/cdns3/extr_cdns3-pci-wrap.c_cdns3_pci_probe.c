
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {char* name; void* flags; void* start; void* end; } ;
struct platform_device_info {scalar_t__ id; int dma_mask; int num_res; struct resource* res; int name; int fwnode; TYPE_1__* parent; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_3__ {int fwnode; } ;
struct pci_dev {scalar_t__ devfn; int dma_mask; TYPE_1__ dev; void* irq; } ;
struct cdns3_wrap {scalar_t__ devfn; int plat_dev; struct resource* dev_res; } ;
typedef int plat_info ;


 int ARRAY_SIZE (struct resource*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* IORESOURCE_IRQ ;
 void* IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PCI_BAR_DEV ;
 int PCI_BAR_HOST ;
 int PCI_BAR_OTG ;
 scalar_t__ PCI_DEV_FN_HOST_DEVICE ;
 scalar_t__ PCI_DEV_FN_OTG ;
 int PLAT_DRIVER_NAME ;
 int PTR_ERR (int ) ;
 size_t RES_DEV_ID ;
 size_t RES_DRD_ID ;
 size_t RES_HOST_ID ;
 size_t RES_IRQ_HOST_ID ;
 size_t RES_IRQ_OTG_ID ;
 size_t RES_IRQ_PERIPHERAL_ID ;
 struct pci_dev* cdns3_get_second_fun (struct pci_dev*) ;
 int dev_dbg (TYPE_1__*,char*,...) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int kfree (struct cdns3_wrap*) ;
 struct cdns3_wrap* kzalloc (int,int ) ;
 int memset (struct platform_device_info*,int ,int) ;
 int pci_disable_device (struct pci_dev*) ;
 struct cdns3_wrap* pci_get_drvdata (struct pci_dev*) ;
 scalar_t__ pci_is_enabled (struct pci_dev*) ;
 void* pci_resource_end (struct pci_dev*,int ) ;
 void* pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct cdns3_wrap*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int platform_device_register_full (struct platform_device_info*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cdns3_pci_probe(struct pci_dev *pdev,
      const struct pci_device_id *id)
{
 struct platform_device_info plat_info;
 struct cdns3_wrap *wrap;
 struct resource *res;
 struct pci_dev *func;
 int err;





 if (!id || (pdev->devfn != PCI_DEV_FN_HOST_DEVICE &&
      pdev->devfn != PCI_DEV_FN_OTG))
  return -EINVAL;

 func = cdns3_get_second_fun(pdev);
 if (unlikely(!func))
  return -EINVAL;

 err = pcim_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "Enabling PCI device has failed %d\n", err);
  return err;
 }

 pci_set_master(pdev);

 if (pci_is_enabled(func)) {
  wrap = pci_get_drvdata(func);
 } else {
  wrap = kzalloc(sizeof(*wrap), GFP_KERNEL);
  if (!wrap) {
   pci_disable_device(pdev);
   return -ENOMEM;
  }
 }

 res = wrap->dev_res;

 if (pdev->devfn == PCI_DEV_FN_HOST_DEVICE) {

  dev_dbg(&pdev->dev, "Initialize Device resources\n");
  res[RES_DEV_ID].start = pci_resource_start(pdev, PCI_BAR_DEV);
  res[RES_DEV_ID].end = pci_resource_end(pdev, PCI_BAR_DEV);
  res[RES_DEV_ID].name = "dev";
  res[RES_DEV_ID].flags = IORESOURCE_MEM;
  dev_dbg(&pdev->dev, "USBSS-DEV physical base addr: %pa\n",
   &res[RES_DEV_ID].start);

  res[RES_HOST_ID].start = pci_resource_start(pdev, PCI_BAR_HOST);
  res[RES_HOST_ID].end = pci_resource_end(pdev, PCI_BAR_HOST);
  res[RES_HOST_ID].name = "xhci";
  res[RES_HOST_ID].flags = IORESOURCE_MEM;
  dev_dbg(&pdev->dev, "USBSS-XHCI physical base addr: %pa\n",
   &res[RES_HOST_ID].start);


  wrap->dev_res[RES_IRQ_HOST_ID].start = pdev->irq;
  wrap->dev_res[RES_IRQ_HOST_ID].name = "host";
  wrap->dev_res[RES_IRQ_HOST_ID].flags = IORESOURCE_IRQ;


  wrap->dev_res[RES_IRQ_PERIPHERAL_ID].start = pdev->irq;
  wrap->dev_res[RES_IRQ_PERIPHERAL_ID].name = "peripheral";
  wrap->dev_res[RES_IRQ_PERIPHERAL_ID].flags = IORESOURCE_IRQ;
 } else {
  res[RES_DRD_ID].start = pci_resource_start(pdev, PCI_BAR_OTG);
  res[RES_DRD_ID].end = pci_resource_end(pdev, PCI_BAR_OTG);
  res[RES_DRD_ID].name = "otg";
  res[RES_DRD_ID].flags = IORESOURCE_MEM;
  dev_dbg(&pdev->dev, "USBSS-DRD physical base addr: %pa\n",
   &res[RES_DRD_ID].start);


  wrap->dev_res[RES_IRQ_OTG_ID].start = pdev->irq;
  wrap->dev_res[RES_IRQ_OTG_ID].name = "otg";
  wrap->dev_res[RES_IRQ_OTG_ID].flags = IORESOURCE_IRQ;
 }

 if (pci_is_enabled(func)) {

  memset(&plat_info, 0, sizeof(plat_info));
  plat_info.parent = &pdev->dev;
  plat_info.fwnode = pdev->dev.fwnode;
  plat_info.name = PLAT_DRIVER_NAME;
  plat_info.id = pdev->devfn;
  wrap->devfn = pdev->devfn;
  plat_info.res = wrap->dev_res;
  plat_info.num_res = ARRAY_SIZE(wrap->dev_res);
  plat_info.dma_mask = pdev->dma_mask;

  wrap->plat_dev = platform_device_register_full(&plat_info);
  if (IS_ERR(wrap->plat_dev)) {
   pci_disable_device(pdev);
   err = PTR_ERR(wrap->plat_dev);
   kfree(wrap);
   return err;
  }
 }

 pci_set_drvdata(pdev, wrap);
 return err;
}
