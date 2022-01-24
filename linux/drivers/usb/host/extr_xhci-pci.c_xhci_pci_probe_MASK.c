#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xhci_hcd {int quirks; TYPE_1__* shared_hcd; int /*<<< orphan*/  hcc_params; } ;
struct usb_hcd {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct hc_driver {int dummy; } ;
struct TYPE_4__ {int can_do_streams; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int XHCI_BROKEN_STREAMS ; 
 int XHCI_DEFAULT_PM_RUNTIME_ALLOW ; 
 int XHCI_PME_STUCK_QUIRK ; 
 struct usb_hcd* FUNC1 (int /*<<< orphan*/ *) ; 
 struct xhci_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct hc_driver*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_hcd*) ; 
 int FUNC9 (struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *dev, const struct pci_device_id *id)
{
	int retval;
	struct xhci_hcd *xhci;
	struct hc_driver *driver;
	struct usb_hcd *hcd;

	driver = (struct hc_driver *)id->driver_data;

	/* Prevent runtime suspending between USB-2 and USB-3 initialization */
	FUNC5(&dev->dev);

	/* Register the USB 2.0 roothub.
	 * FIXME: USB core must know to register the USB 2.0 roothub first.
	 * This is sort of silly, because we could just set the HCD driver flags
	 * to say USB 2.0, but I'm not sure what the implications would be in
	 * the other parts of the HCD code.
	 */
	retval = FUNC9(dev, id);

	if (retval)
		goto put_runtime_pm;

	/* USB 2.0 roothub is stored in the PCI device now. */
	hcd = FUNC1(&dev->dev);
	xhci = FUNC2(hcd);
	xhci->shared_hcd = FUNC8(driver, &dev->dev,
				FUNC3(dev), hcd);
	if (!xhci->shared_hcd) {
		retval = -ENOMEM;
		goto dealloc_usb2_hcd;
	}

	retval = FUNC12(xhci);
	if (retval)
		goto put_usb3_hcd;

	retval = FUNC7(xhci->shared_hcd, dev->irq,
			IRQF_SHARED);
	if (retval)
		goto put_usb3_hcd;
	/* Roothub already marked as USB 3.0 speed */

	if (!(xhci->quirks & XHCI_BROKEN_STREAMS) &&
			FUNC0(xhci->hcc_params) >= 4)
		xhci->shared_hcd->can_do_streams = 1;

	if (xhci->quirks & XHCI_PME_STUCK_QUIRK)
		FUNC13(dev);

	/* USB-2 and USB-3 roothubs initialized, allow runtime pm suspend */
	FUNC6(&dev->dev);

	if (xhci->quirks & XHCI_DEFAULT_PM_RUNTIME_ALLOW)
		FUNC4(&dev->dev);

	return 0;

put_usb3_hcd:
	FUNC11(xhci->shared_hcd);
dealloc_usb2_hcd:
	FUNC10(dev);
put_runtime_pm:
	FUNC6(&dev->dev);
	return retval;
}