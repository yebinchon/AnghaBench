#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {unsigned long rsrc_start; unsigned long rsrc_len; int irq; TYPE_1__ self; int /*<<< orphan*/  state; void* regs; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct oxu_hcd {int is_otg; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct usb_hcd* FUNC0 (int) ; 
 int /*<<< orphan*/  HC_STATE_HALT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int OXU_CM_HOST_ONLY ; 
 int OXU_ES_LITTLE ; 
 int OXU_OTG_CORE_OFFSET ; 
 int OXU_SPH_CORE_OFFSET ; 
 int /*<<< orphan*/  OXU_USBMODE ; 
 int OXU_VBPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct oxu_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  oxu_hc_driver ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC5 (int /*<<< orphan*/ *,struct device*,char*) ; 

__attribute__((used)) static struct usb_hcd *FUNC6(struct platform_device *pdev,
				unsigned long memstart, unsigned long memlen,
				void *base, int irq, int otg)
{
	struct device *dev = &pdev->dev;

	struct usb_hcd *hcd;
	struct oxu_hcd *oxu;
	int ret;

	/* Set endian mode and host mode */
	FUNC3(base + (otg ? OXU_OTG_CORE_OFFSET : OXU_SPH_CORE_OFFSET),
				OXU_USBMODE,
				OXU_CM_HOST_ONLY | OXU_ES_LITTLE | OXU_VBPS);

	hcd = FUNC5(&oxu_hc_driver, dev,
				otg ? "oxu210hp_otg" : "oxu210hp_sph");
	if (!hcd)
		return FUNC0(-ENOMEM);

	hcd->rsrc_start = memstart;
	hcd->rsrc_len = memlen;
	hcd->regs = base;
	hcd->irq = irq;
	hcd->state = HC_STATE_HALT;

	oxu = FUNC2(hcd);
	oxu->is_otg = otg;

	ret = FUNC4(hcd, irq, IRQF_SHARED);
	if (ret < 0)
		return FUNC0(ret);

	FUNC1(hcd->self.controller);
	return hcd;
}