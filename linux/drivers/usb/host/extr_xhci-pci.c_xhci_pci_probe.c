
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xhci_hcd {int quirks; TYPE_1__* shared_hcd; int hcc_params; } ;
struct usb_hcd {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; int irq; } ;
struct hc_driver {int dummy; } ;
struct TYPE_4__ {int can_do_streams; } ;


 int ENOMEM ;
 int HCC_MAX_PSA (int ) ;
 int IRQF_SHARED ;
 int XHCI_BROKEN_STREAMS ;
 int XHCI_DEFAULT_PM_RUNTIME_ALLOW ;
 int XHCI_PME_STUCK_QUIRK ;
 struct usb_hcd* dev_get_drvdata (int *) ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int pci_name (struct pci_dev*) ;
 int pm_runtime_allow (int *) ;
 int pm_runtime_get_noresume (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int usb_add_hcd (TYPE_1__*,int ,int ) ;
 TYPE_1__* usb_create_shared_hcd (struct hc_driver*,int *,int ,struct usb_hcd*) ;
 int usb_hcd_pci_probe (struct pci_dev*,struct pci_device_id const*) ;
 int usb_hcd_pci_remove (struct pci_dev*) ;
 int usb_put_hcd (TYPE_1__*) ;
 int xhci_ext_cap_init (struct xhci_hcd*) ;
 int xhci_pme_acpi_rtd3_enable (struct pci_dev*) ;

__attribute__((used)) static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 int retval;
 struct xhci_hcd *xhci;
 struct hc_driver *driver;
 struct usb_hcd *hcd;

 driver = (struct hc_driver *)id->driver_data;


 pm_runtime_get_noresume(&dev->dev);







 retval = usb_hcd_pci_probe(dev, id);

 if (retval)
  goto put_runtime_pm;


 hcd = dev_get_drvdata(&dev->dev);
 xhci = hcd_to_xhci(hcd);
 xhci->shared_hcd = usb_create_shared_hcd(driver, &dev->dev,
    pci_name(dev), hcd);
 if (!xhci->shared_hcd) {
  retval = -ENOMEM;
  goto dealloc_usb2_hcd;
 }

 retval = xhci_ext_cap_init(xhci);
 if (retval)
  goto put_usb3_hcd;

 retval = usb_add_hcd(xhci->shared_hcd, dev->irq,
   IRQF_SHARED);
 if (retval)
  goto put_usb3_hcd;


 if (!(xhci->quirks & XHCI_BROKEN_STREAMS) &&
   HCC_MAX_PSA(xhci->hcc_params) >= 4)
  xhci->shared_hcd->can_do_streams = 1;

 if (xhci->quirks & XHCI_PME_STUCK_QUIRK)
  xhci_pme_acpi_rtd3_enable(dev);


 pm_runtime_put_noidle(&dev->dev);

 if (xhci->quirks & XHCI_DEFAULT_PM_RUNTIME_ALLOW)
  pm_runtime_allow(&dev->dev);

 return 0;

put_usb3_hcd:
 usb_put_hcd(xhci->shared_hcd);
dealloc_usb2_hcd:
 usb_hcd_pci_remove(dev);
put_runtime_pm:
 pm_runtime_put_noidle(&dev->dev);
 return retval;
}
