#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct usb_hcd {int dummy; } ;
struct usb_device {int devnum; } ;
struct max3421_hcd {int loaded_epnum; struct usb_device* loaded_dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ MAX3421_HCTL_RCVTOG0_BIT ; 
 scalar_t__ MAX3421_HCTL_SNDTOG0_BIT ; 
 int MAX3421_HRSL_RCVTOGRD_BIT ; 
 int MAX3421_HRSL_SNDTOGRD_BIT ; 
 int /*<<< orphan*/  MAX3421_REG_HCTL ; 
 int /*<<< orphan*/  MAX3421_REG_HRSL ; 
 int /*<<< orphan*/  MAX3421_REG_PERADDR ; 
 struct max3421_hcd* FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (struct usb_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usb_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int,int,int) ; 

__attribute__((used)) static void
FUNC6(struct usb_hcd *hcd, struct usb_device *dev, int epnum,
		    int force_toggles)
{
	struct max3421_hcd *max3421_hcd = FUNC1(hcd);
	int old_epnum, same_ep, rcvtog, sndtog;
	struct usb_device *old_dev;
	u8 hctl;

	old_dev = max3421_hcd->loaded_dev;
	old_epnum = max3421_hcd->loaded_epnum;

	same_ep = (dev == old_dev && epnum == old_epnum);
	if (same_ep && !force_toggles)
		return;

	if (old_dev && !same_ep) {
		/* save the old end-points toggles: */
		u8 hrsl = FUNC2(hcd, MAX3421_REG_HRSL);

		rcvtog = (hrsl >> MAX3421_HRSL_RCVTOGRD_BIT) & 1;
		sndtog = (hrsl >> MAX3421_HRSL_SNDTOGRD_BIT) & 1;

		/* no locking: HCD (i.e., we) own toggles, don't we? */
		FUNC5(old_dev, old_epnum, 0, rcvtog);
		FUNC5(old_dev, old_epnum, 1, sndtog);
	}
	/* setup new endpoint's toggle bits: */
	rcvtog = FUNC4(dev, epnum, 0);
	sndtog = FUNC4(dev, epnum, 1);
	hctl = (FUNC0(rcvtog + MAX3421_HCTL_RCVTOG0_BIT) |
		FUNC0(sndtog + MAX3421_HCTL_SNDTOG0_BIT));

	max3421_hcd->loaded_epnum = epnum;
	FUNC3(hcd, MAX3421_REG_HCTL, hctl);

	/*
	 * Note: devnum for one and the same device can change during
	 * address-assignment so it's best to just always load the
	 * address whenever the end-point changed/was forced.
	 */
	max3421_hcd->loaded_dev = dev;
	FUNC3(hcd, MAX3421_REG_PERADDR, dev->devnum);
}