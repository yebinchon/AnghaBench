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
typedef  int /*<<< orphan*/  u8 ;
struct usbatm_data {int /*<<< orphan*/  flags; struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int bmAttributes; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {struct usb_host_endpoint** ep_in; } ;
struct cxacru_modem_type {int dummy; } ;
struct cxacru_data {int line_status; int adsl_status; void* rcv_urb; void* snd_urb; int /*<<< orphan*/ * rcv_buf; int /*<<< orphan*/ * snd_buf; int /*<<< orphan*/  poll_work; int /*<<< orphan*/  cm_serialize; int /*<<< orphan*/  snd_done; int /*<<< orphan*/  rcv_done; int /*<<< orphan*/  adsl_state_serialize; int /*<<< orphan*/  poll_state; int /*<<< orphan*/  poll_state_serialize; struct cxacru_modem_type* modem_type; struct usbatm_data* usbatm; } ;

/* Variables and functions */
 size_t CXACRU_EP_CMD ; 
 int /*<<< orphan*/  CXPOLL_STOPPED ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  UDSL_SKIP_HEAVY_INIT ; 
 int USB_ENDPOINT_XFERTYPE_MASK ; 
 int USB_ENDPOINT_XFER_INT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxacru_blocking_completion ; 
 scalar_t__ FUNC2 (struct cxacru_data*) ; 
 int /*<<< orphan*/  cxacru_poll_status ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct cxacru_data*) ; 
 struct cxacru_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usbatm_data*,char*) ; 
 int /*<<< orphan*/  FUNC10 (void*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,size_t) ; 

__attribute__((used)) static int FUNC17(struct usbatm_data *usbatm_instance,
		       struct usb_interface *intf, const struct usb_device_id *id)
{
	struct cxacru_data *instance;
	struct usb_device *usb_dev = FUNC4(intf);
	struct usb_host_endpoint *cmd_ep = usb_dev->ep_in[CXACRU_EP_CMD];
	int ret;

	/* instance init */
	instance = FUNC6(sizeof(*instance), GFP_KERNEL);
	if (!instance)
		return -ENOMEM;

	instance->usbatm = usbatm_instance;
	instance->modem_type = (struct cxacru_modem_type *) id->driver_info;

	FUNC7(&instance->poll_state_serialize);
	instance->poll_state = CXPOLL_STOPPED;
	instance->line_status = -1;
	instance->adsl_status = -1;

	FUNC7(&instance->adsl_state_serialize);

	instance->rcv_buf = (u8 *) FUNC1(GFP_KERNEL);
	if (!instance->rcv_buf) {
		FUNC9(usbatm_instance, "cxacru_bind: no memory for rcv_buf\n");
		ret = -ENOMEM;
		goto fail;
	}
	instance->snd_buf = (u8 *) FUNC1(GFP_KERNEL);
	if (!instance->snd_buf) {
		FUNC9(usbatm_instance, "cxacru_bind: no memory for snd_buf\n");
		ret = -ENOMEM;
		goto fail;
	}
	instance->rcv_urb = FUNC8(0, GFP_KERNEL);
	if (!instance->rcv_urb) {
		ret = -ENOMEM;
		goto fail;
	}
	instance->snd_urb = FUNC8(0, GFP_KERNEL);
	if (!instance->snd_urb) {
		ret = -ENOMEM;
		goto fail;
	}

	if (!cmd_ep) {
		FUNC9(usbatm_instance, "cxacru_bind: no command endpoint\n");
		ret = -ENODEV;
		goto fail;
	}

	if ((cmd_ep->desc.bmAttributes & USB_ENDPOINT_XFERTYPE_MASK)
			== USB_ENDPOINT_XFER_INT) {
		FUNC11(instance->rcv_urb,
			usb_dev, FUNC14(usb_dev, CXACRU_EP_CMD),
			instance->rcv_buf, PAGE_SIZE,
			cxacru_blocking_completion, &instance->rcv_done, 1);

		FUNC11(instance->snd_urb,
			usb_dev, FUNC16(usb_dev, CXACRU_EP_CMD),
			instance->snd_buf, PAGE_SIZE,
			cxacru_blocking_completion, &instance->snd_done, 4);
	} else {
		FUNC10(instance->rcv_urb,
			usb_dev, FUNC13(usb_dev, CXACRU_EP_CMD),
			instance->rcv_buf, PAGE_SIZE,
			cxacru_blocking_completion, &instance->rcv_done);

		FUNC10(instance->snd_urb,
			usb_dev, FUNC15(usb_dev, CXACRU_EP_CMD),
			instance->snd_buf, PAGE_SIZE,
			cxacru_blocking_completion, &instance->snd_done);
	}

	FUNC7(&instance->cm_serialize);

	FUNC0(&instance->poll_work, cxacru_poll_status);

	usbatm_instance->driver_data = instance;

	usbatm_instance->flags = (FUNC2(instance) ? 0 : UDSL_SKIP_HEAVY_INIT);

	return 0;

 fail:
	FUNC3((unsigned long) instance->snd_buf);
	FUNC3((unsigned long) instance->rcv_buf);
	FUNC12(instance->snd_urb);
	FUNC12(instance->rcv_urb);
	FUNC5(instance);

	return ret;
}