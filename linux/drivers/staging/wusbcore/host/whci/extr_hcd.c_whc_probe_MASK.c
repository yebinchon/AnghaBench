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
struct wusbhc {scalar_t__ ports_max; int /*<<< orphan*/  uwb_rc; int /*<<< orphan*/  set_gtk; int /*<<< orphan*/  set_ptk; int /*<<< orphan*/  set_num_dnts; int /*<<< orphan*/  bwa_set; int /*<<< orphan*/  dev_info_set; int /*<<< orphan*/  mmcie_rm; int /*<<< orphan*/  mmcie_add; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; int /*<<< orphan*/  mmcies_max; struct device* dev; } ;
struct whc {scalar_t__ n_devices; struct umc_dev* umc; int /*<<< orphan*/  n_mmc_ies; } ;
struct TYPE_2__ {int sg_tablesize; int /*<<< orphan*/  controller; } ;
struct usb_hcd {int wireless; TYPE_1__ self; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct umc_dev {int /*<<< orphan*/  irq; struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ USB_MAXCHILDREN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC4 (int /*<<< orphan*/ *,struct device*,char*) ; 
 struct wusbhc* FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  whc_bwa_set ; 
 int /*<<< orphan*/  FUNC10 (struct whc*) ; 
 int /*<<< orphan*/  FUNC11 (struct whc*) ; 
 int /*<<< orphan*/  whc_dev_info_set ; 
 int /*<<< orphan*/  whc_hc_driver ; 
 int FUNC12 (struct whc*) ; 
 int /*<<< orphan*/  whc_mmcie_add ; 
 int /*<<< orphan*/  whc_mmcie_rm ; 
 int /*<<< orphan*/  whc_set_gtk ; 
 int /*<<< orphan*/  whc_set_num_dnts ; 
 int /*<<< orphan*/  whc_set_ptk ; 
 int /*<<< orphan*/  whc_wusbhc_start ; 
 int /*<<< orphan*/  whc_wusbhc_stop ; 
 int FUNC13 (struct wusbhc*) ; 
 int FUNC14 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC15 (struct wusbhc*) ; 
 struct whc* FUNC16 (struct wusbhc*) ; 

__attribute__((used)) static int FUNC17(struct umc_dev *umc)
{
	int ret;
	struct usb_hcd *usb_hcd;
	struct wusbhc *wusbhc;
	struct whc *whc;
	struct device *dev = &umc->dev;

	usb_hcd = FUNC4(&whc_hc_driver, dev, "whci");
	if (usb_hcd == NULL) {
		FUNC0(dev, "unable to create hcd\n");
		return -ENOMEM;
	}

	usb_hcd->wireless = 1;
	usb_hcd->self.sg_tablesize = 2048; /* somewhat arbitrary */

	wusbhc = FUNC5(usb_hcd);
	whc = FUNC16(wusbhc);
	whc->umc = umc;

	ret = FUNC12(whc);
	if (ret)
		goto error_whc_init;

	wusbhc->dev = dev;
	wusbhc->uwb_rc = FUNC8(umc->dev.parent);
	if (!wusbhc->uwb_rc) {
		ret = -ENODEV;
		FUNC0(dev, "cannot get radio controller\n");
		goto error_uwb_rc;
	}

	if (whc->n_devices > USB_MAXCHILDREN) {
		FUNC1(dev, "USB_MAXCHILDREN too low for WUSB adapter (%u ports)\n",
			 whc->n_devices);
		wusbhc->ports_max = USB_MAXCHILDREN;
	} else
		wusbhc->ports_max = whc->n_devices;
	wusbhc->mmcies_max      = whc->n_mmc_ies;
	wusbhc->start           = whc_wusbhc_start;
	wusbhc->stop            = whc_wusbhc_stop;
	wusbhc->mmcie_add       = whc_mmcie_add;
	wusbhc->mmcie_rm        = whc_mmcie_rm;
	wusbhc->dev_info_set    = whc_dev_info_set;
	wusbhc->bwa_set         = whc_bwa_set;
	wusbhc->set_num_dnts    = whc_set_num_dnts;
	wusbhc->set_ptk         = whc_set_ptk;
	wusbhc->set_gtk         = whc_set_gtk;

	ret = FUNC14(wusbhc);
	if (ret)
		goto error_wusbhc_create;

	ret = FUNC3(usb_hcd, whc->umc->irq, IRQF_SHARED);
	if (ret) {
		FUNC0(dev, "cannot add HCD: %d\n", ret);
		goto error_usb_add_hcd;
	}
	FUNC2(usb_hcd->self.controller);

	ret = FUNC13(wusbhc);
	if (ret) {
		FUNC0(dev, "WUSBHC phase B setup failed: %d\n", ret);
		goto error_wusbhc_b_create;
	}

	FUNC11(whc);

	return 0;

error_wusbhc_b_create:
	FUNC7(usb_hcd);
error_usb_add_hcd:
	FUNC15(wusbhc);
error_wusbhc_create:
	FUNC9(wusbhc->uwb_rc);
error_uwb_rc:
	FUNC10(whc);
error_whc_init:
	FUNC6(usb_hcd);
	return ret;
}