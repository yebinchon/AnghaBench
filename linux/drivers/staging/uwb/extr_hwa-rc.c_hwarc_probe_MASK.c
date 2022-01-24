#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uwb_rc {int /*<<< orphan*/ * filter_event; int /*<<< orphan*/ * filter_cmd; int /*<<< orphan*/  reset; int /*<<< orphan*/  cmd; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; int /*<<< orphan*/  owner; } ;
struct device {int dummy; } ;
struct usb_interface {TYPE_3__* cur_altsetting; struct device dev; } ;
struct usb_device_id {int driver_info; } ;
struct hwarc {int /*<<< orphan*/  usb_dev; struct uwb_rc* uwb_rc; int /*<<< orphan*/  usb_iface; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_6__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int WUSB_QUIRK_WHCI_CMD_EVT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  hwarc_cmd ; 
 int /*<<< orphan*/ * hwarc_filter_cmd ; 
 int /*<<< orphan*/ * hwarc_filter_event ; 
 int FUNC1 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hwarc*) ; 
 int /*<<< orphan*/  hwarc_neep_init ; 
 int /*<<< orphan*/  hwarc_neep_release ; 
 int /*<<< orphan*/  hwarc_reset ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct hwarc*) ; 
 struct hwarc* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,struct hwarc*) ; 
 int FUNC12 (struct uwb_rc*,struct device*,struct hwarc*) ; 
 struct uwb_rc* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC15 (struct uwb_rc*) ; 

__attribute__((used)) static int FUNC16(struct usb_interface *iface,
		       const struct usb_device_id *id)
{
	int result;
	struct uwb_rc *uwb_rc;
	struct hwarc *hwarc;
	struct device *dev = &iface->dev;

	if (iface->cur_altsetting->desc.bNumEndpoints < 1)
		return -ENODEV;
	if (!FUNC6(&iface->cur_altsetting->endpoint[0].desc))
		return -ENODEV;

	result = -ENOMEM;
	uwb_rc = FUNC13();
	if (uwb_rc == NULL) {
		FUNC0(dev, "unable to allocate RC instance\n");
		goto error_rc_alloc;
	}
	hwarc = FUNC5(sizeof(*hwarc), GFP_KERNEL);
	if (hwarc == NULL) {
		FUNC0(dev, "unable to allocate HWA RC instance\n");
		goto error_alloc;
	}
	FUNC2(hwarc);
	hwarc->usb_dev = FUNC7(FUNC3(iface));
	hwarc->usb_iface = FUNC8(iface);
	hwarc->uwb_rc = uwb_rc;

	uwb_rc->owner = THIS_MODULE;
	uwb_rc->start = hwarc_neep_init;
	uwb_rc->stop  = hwarc_neep_release;
	uwb_rc->cmd   = hwarc_cmd;
	uwb_rc->reset = hwarc_reset;
	if (id->driver_info & WUSB_QUIRK_WHCI_CMD_EVT) {
		uwb_rc->filter_cmd   = NULL;
		uwb_rc->filter_event = NULL;
	} else {
		uwb_rc->filter_cmd   = hwarc_filter_cmd;
		uwb_rc->filter_event = hwarc_filter_event;
	}

	result = FUNC12(uwb_rc, dev, hwarc);
	if (result < 0)
		goto error_rc_add;
	result = FUNC1(uwb_rc);
	if (result < 0) {
		FUNC0(dev, "cannot retrieve version of RC \n");
		goto error_get_version;
	}
	FUNC11(iface, hwarc);
	return 0;

error_get_version:
	FUNC15(uwb_rc);
error_rc_add:
	FUNC10(iface);
	FUNC9(hwarc->usb_dev);
	FUNC4(hwarc);
error_alloc:
	FUNC14(uwb_rc);
error_rc_alloc:
	return result;
}