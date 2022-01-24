#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct xhci_hcd {int dummy; } ;
struct TYPE_3__ {struct device* controller; } ;
struct usb_hcd {scalar_t__ rsrc_start; TYPE_1__ self; } ;
struct resource {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {struct device* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pci_dev {scalar_t__ device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ PCI_DEVICE_ID_INTEL_CHERRYVIEW_XHCI ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int /*<<< orphan*/  USB_SW_DRV_NAME ; 
 scalar_t__ USB_SW_RESOURCE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct platform_device*,struct resource*,int) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  role_switch_props ; 
 struct pci_dev* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xhci_intel_unregister_pdev ; 
 struct usb_hcd* FUNC9 (struct xhci_hcd*) ; 

__attribute__((used)) static int FUNC10(struct xhci_hcd *xhci, u32 cap_offset)
{
	struct usb_hcd *hcd = FUNC9(xhci);
	struct device *dev = hcd->self.controller;
	struct platform_device *pdev;
	struct pci_dev *pci = FUNC7(dev);
	struct resource	res = { 0, };
	int ret;

	pdev = FUNC5(USB_SW_DRV_NAME, PLATFORM_DEVID_NONE);
	if (!pdev) {
		FUNC8(xhci, "couldn't allocate %s platform device\n",
			 USB_SW_DRV_NAME);
		return -ENOMEM;
	}

	res.start = hcd->rsrc_start + cap_offset;
	res.end	  = res.start + USB_SW_RESOURCE_SIZE - 1;
	res.name  = USB_SW_DRV_NAME;
	res.flags = IORESOURCE_MEM;

	ret = FUNC4(pdev, &res, 1);
	if (ret) {
		FUNC0(dev, "couldn't add resources to intel_xhci_usb_sw pdev\n");
		FUNC6(pdev);
		return ret;
	}

	if (pci->device == PCI_DEVICE_ID_INTEL_CHERRYVIEW_XHCI) {
		ret = FUNC3(pdev, role_switch_props);
		if (ret) {
			FUNC0(dev, "failed to register device properties\n");
			FUNC6(pdev);
			return ret;
		}
	}

	pdev->dev.parent = dev;

	ret = FUNC2(pdev);
	if (ret) {
		FUNC0(dev, "couldn't register intel_xhci_usb_sw pdev\n");
		FUNC6(pdev);
		return ret;
	}

	ret = FUNC1(dev, xhci_intel_unregister_pdev, pdev);
	if (ret) {
		FUNC0(dev, "couldn't add unregister action for intel_xhci_usb_sw pdev\n");
		return ret;
	}

	return 0;
}