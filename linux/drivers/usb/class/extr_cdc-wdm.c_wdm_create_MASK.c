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
typedef  int u16 ;
struct wdm_device {int wMaxCommand; int wMaxPacketSize; int (* manage_power ) (struct usb_interface*,int) ;int /*<<< orphan*/  device_list; void* inbuf; TYPE_3__* irq; struct usb_interface* intf; void* response; void* inum; void* sbuf; void* validity; void* ubuf; void* command; void* orq; int /*<<< orphan*/  service_outs_intr; int /*<<< orphan*/  rxwork; int /*<<< orphan*/  wait; int /*<<< orphan*/  iuspin; int /*<<< orphan*/  wlock; int /*<<< orphan*/  rlock; } ;
struct usb_interface {int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  dev; TYPE_2__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_ctrlrequest {int dummy; } ;
struct TYPE_6__ {int bRequestType; void* wLength; void* wIndex; scalar_t__ wValue; int /*<<< orphan*/  bRequest; } ;
struct TYPE_4__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_CDC_GET_ENCAPSULATED_RESPONSE ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC2 (struct wdm_device*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct wdm_device* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  service_interrupt_work ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 void* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_endpoint_descriptor*) ; 
 int FUNC18 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC19 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,void*,int,int /*<<< orphan*/ ,struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC20 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct wdm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdm_class ; 
 int /*<<< orphan*/  wdm_device_list ; 
 int /*<<< orphan*/  wdm_device_list_lock ; 
 int /*<<< orphan*/  wdm_in_callback ; 
 int /*<<< orphan*/  wdm_int_callback ; 
 int /*<<< orphan*/  wdm_rxwork ; 

__attribute__((used)) static int FUNC24(struct usb_interface *intf, struct usb_endpoint_descriptor *ep,
		u16 bufsize, int (*manage_power)(struct usb_interface *, int))
{
	int rv = -ENOMEM;
	struct wdm_device *desc;

	desc = FUNC9(sizeof(struct wdm_device), GFP_KERNEL);
	if (!desc)
		goto out;
	FUNC0(&desc->device_list);
	FUNC12(&desc->rlock);
	FUNC12(&desc->wlock);
	FUNC14(&desc->iuspin);
	FUNC6(&desc->wait);
	desc->wMaxCommand = bufsize;
	/* this will be expanded and needed in hardware endianness */
	desc->inum = FUNC3((u16)intf->cur_altsetting->desc.bInterfaceNumber);
	desc->intf = intf;
	FUNC1(&desc->rxwork, wdm_rxwork);
	FUNC1(&desc->service_outs_intr, service_interrupt_work);

	rv = -EINVAL;
	if (!FUNC17(ep))
		goto err;

	desc->wMaxPacketSize = FUNC18(ep);

	desc->orq = FUNC8(sizeof(struct usb_ctrlrequest), GFP_KERNEL);
	if (!desc->orq)
		goto err;
	desc->irq = FUNC8(sizeof(struct usb_ctrlrequest), GFP_KERNEL);
	if (!desc->irq)
		goto err;

	desc->validity = FUNC16(0, GFP_KERNEL);
	if (!desc->validity)
		goto err;

	desc->response = FUNC16(0, GFP_KERNEL);
	if (!desc->response)
		goto err;

	desc->command = FUNC16(0, GFP_KERNEL);
	if (!desc->command)
		goto err;

	desc->ubuf = FUNC8(desc->wMaxCommand, GFP_KERNEL);
	if (!desc->ubuf)
		goto err;

	desc->sbuf = FUNC8(desc->wMaxPacketSize, GFP_KERNEL);
	if (!desc->sbuf)
		goto err;

	desc->inbuf = FUNC8(desc->wMaxCommand, GFP_KERNEL);
	if (!desc->inbuf)
		goto err;

	FUNC20(
		desc->validity,
		FUNC7(intf),
		FUNC22(FUNC7(intf), ep->bEndpointAddress),
		desc->sbuf,
		desc->wMaxPacketSize,
		wdm_int_callback,
		desc,
		ep->bInterval
	);

	desc->irq->bRequestType = (USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE);
	desc->irq->bRequest = USB_CDC_GET_ENCAPSULATED_RESPONSE;
	desc->irq->wValue = 0;
	desc->irq->wIndex = desc->inum; /* already converted */
	desc->irq->wLength = FUNC3(desc->wMaxCommand);

	FUNC19(
		desc->response,
		FUNC7(intf),
		/* using common endpoint 0 */
		FUNC21(FUNC7(desc->intf), 0),
		(unsigned char *)desc->irq,
		desc->inbuf,
		desc->wMaxCommand,
		wdm_in_callback,
		desc
	);

	desc->manage_power = manage_power;

	FUNC13(&wdm_device_list_lock);
	FUNC10(&desc->device_list, &wdm_device_list);
	FUNC15(&wdm_device_list_lock);

	rv = FUNC23(intf, &wdm_class);
	if (rv < 0)
		goto err;
	else
		FUNC4(&intf->dev, "%s: USB WDM device\n", FUNC5(intf->usb_dev));
out:
	return rv;
err:
	FUNC13(&wdm_device_list_lock);
	FUNC11(&desc->device_list);
	FUNC15(&wdm_device_list_lock);
	FUNC2(desc);
	return rv;
}