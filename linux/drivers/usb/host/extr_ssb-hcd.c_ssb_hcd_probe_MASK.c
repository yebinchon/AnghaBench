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
typedef  int u16 ;
struct ssb_hcd_device {void* ohci_dev; void* ehci_dev; int /*<<< orphan*/  enable_flags; } ;
struct ssb_device_id {int dummy; } ;
struct TYPE_3__ {int coreid; } ;
struct ssb_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_dev; TYPE_2__* bus; TYPE_1__ id; } ;
struct TYPE_4__ {int chip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  SSB_ADMATCH0 ; 
 int SSB_DEV_USB20_HOST ; 
 struct ssb_hcd_device* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 void* FUNC8 (struct ssb_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ssb_device*) ; 
 int FUNC10 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ssb_device*,struct ssb_hcd_device*) ; 

__attribute__((used)) static int FUNC12(struct ssb_device *dev,
				   const struct ssb_device_id *id)
{
	int err, tmp;
	int start, len;
	u16 chipid_top;
	u16 coreid = dev->id.coreid;
	struct ssb_hcd_device *usb_dev;

	/* USBcores are only connected on embedded devices. */
	chipid_top = (dev->bus->chip_id & 0xFF00);
	if (chipid_top != 0x4700 && chipid_top != 0x5300)
		return -ENODEV;

	/* TODO: Probably need checks here; is the core connected? */

	if (FUNC4(dev->dma_dev, FUNC0(32)))
		return -EOPNOTSUPP;

	usb_dev = FUNC3(dev->dev, sizeof(struct ssb_hcd_device),
			       GFP_KERNEL);
	if (!usb_dev)
		return -ENOMEM;

	/* We currently always attach SSB_DEV_USB11_HOSTDEV
	 * as HOST OHCI. If we want to attach it as Client device,
	 * we must branch here and call into the (yet to
	 * be written) Client mode driver. Same for remove(). */
	usb_dev->enable_flags = FUNC9(dev);

	tmp = FUNC10(dev, SSB_ADMATCH0);

	start = FUNC6(tmp);
	len = (coreid == SSB_DEV_USB20_HOST) ? 0x800 : FUNC7(tmp);
	usb_dev->ohci_dev = FUNC8(dev, true, start, len);
	if (FUNC1(usb_dev->ohci_dev))
		return FUNC2(usb_dev->ohci_dev);

	if (coreid == SSB_DEV_USB20_HOST) {
		start = FUNC6(tmp) + 0x800; /* ehci core offset */
		usb_dev->ehci_dev = FUNC8(dev, false, start, len);
		if (FUNC1(usb_dev->ehci_dev)) {
			err = FUNC2(usb_dev->ehci_dev);
			goto err_unregister_ohci_dev;
		}
	}

	FUNC11(dev, usb_dev);
	return 0;

err_unregister_ohci_dev:
	FUNC5(usb_dev->ohci_dev);
	return err;
}