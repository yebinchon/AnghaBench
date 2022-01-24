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
typedef  scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct u132_platform_data {scalar_t__ vendor; scalar_t__ device; } ;
struct u132 {int going; TYPE_2__* platform_dev; int /*<<< orphan*/  sw_lock; int /*<<< orphan*/  flags; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  OHCI_QUIRK_AMD756 ; 
 int /*<<< orphan*/  OHCI_QUIRK_ZFMICRO ; 
 scalar_t__ PCI_VENDOR_ID_AMD ; 
 scalar_t__ PCI_VENDOR_ID_COMPAQ ; 
 scalar_t__ PCI_VENDOR_ID_OPTI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct u132* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct u132*) ; 
 int FUNC8 (struct u132*) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *hcd)
{
	struct u132 *u132 = FUNC2(hcd);
	if (u132->going > 1) {
		FUNC0(&u132->platform_dev->dev, "device has been removed %d\n"
			, u132->going);
		return -ENODEV;
	} else if (u132->going > 0) {
		FUNC0(&u132->platform_dev->dev, "device is being removed\n");
		return -ESHUTDOWN;
	} else if (hcd->self.controller) {
		int retval;
		struct platform_device *pdev =
			FUNC6(hcd->self.controller);
		u16 vendor = ((struct u132_platform_data *)
			FUNC1(&pdev->dev))->vendor;
		u16 device = ((struct u132_platform_data *)
			FUNC1(&pdev->dev))->device;
		FUNC4(&u132->sw_lock);
		FUNC3(10);
		if (vendor == PCI_VENDOR_ID_AMD && device == 0x740c) {
			u132->flags = OHCI_QUIRK_AMD756;
		} else if (vendor == PCI_VENDOR_ID_OPTI && device == 0xc861) {
			FUNC0(&u132->platform_dev->dev, "WARNING: OPTi workar"
				"ounds unavailable\n");
		} else if (vendor == PCI_VENDOR_ID_COMPAQ && device == 0xa0f8)
			u132->flags |= OHCI_QUIRK_ZFMICRO;
		retval = FUNC8(u132);
		if (retval) {
			FUNC7(u132);
			u132->going = 1;
		}
		FUNC3(100);
		FUNC5(&u132->sw_lock);
		return retval;
	} else {
		FUNC0(&u132->platform_dev->dev, "platform_device missing\n");
		return -ENODEV;
	}
}