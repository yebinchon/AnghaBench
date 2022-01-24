#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct usb_string {int /*<<< orphan*/  id; } ;
struct usb_function {TYPE_2__* config; } ;
struct usb_ep {int dummy; } ;
struct usb_configuration {TYPE_3__* cdev; } ;
struct f_hidg {int write_pending; int /*<<< orphan*/ * req; struct usb_ep* in_ep; int /*<<< orphan*/  cdev; int /*<<< orphan*/  minor; int /*<<< orphan*/  completed_out_req; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  read_spinlock; int /*<<< orphan*/  write_spinlock; int /*<<< orphan*/  report_desc_length; int /*<<< orphan*/  report_length; int /*<<< orphan*/  protocol; int /*<<< orphan*/  bInterfaceProtocol; int /*<<< orphan*/  bInterfaceSubClass; struct usb_ep* out_ep; } ;
struct device {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_26__ {int bInterfaceNumber; int /*<<< orphan*/  bInterfaceProtocol; int /*<<< orphan*/  bInterfaceSubClass; int /*<<< orphan*/  iInterface; } ;
struct TYPE_25__ {void* wBytesPerInterval; } ;
struct TYPE_24__ {int /*<<< orphan*/  bEndpointAddress; void* wMaxPacketSize; } ;
struct TYPE_23__ {void* wBytesPerInterval; } ;
struct TYPE_22__ {int /*<<< orphan*/  bEndpointAddress; void* wMaxPacketSize; } ;
struct TYPE_21__ {int /*<<< orphan*/  bEndpointAddress; void* wMaxPacketSize; } ;
struct TYPE_20__ {int /*<<< orphan*/  gadget; } ;
struct TYPE_19__ {int /*<<< orphan*/  cdev; } ;
struct TYPE_18__ {void* wDescriptorLength; int /*<<< orphan*/  bDescriptorType; } ;
struct TYPE_17__ {TYPE_1__* desc; } ;
struct TYPE_16__ {int /*<<< orphan*/  bEndpointAddress; void* wMaxPacketSize; } ;
struct TYPE_15__ {int /*<<< orphan*/  bEndpointAddress; void* wMaxPacketSize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t CT_FUNC_HID_IDX ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HID_DT_REPORT ; 
 int /*<<< orphan*/  HID_REPORT_PROTOCOL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct usb_string*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_string*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ct_func_string_defs ; 
 int /*<<< orphan*/  ct_func_strings ; 
 struct usb_string* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_hidg_fops ; 
 int /*<<< orphan*/  FUNC11 (struct usb_ep*,int /*<<< orphan*/ *) ; 
 struct f_hidg* FUNC12 (struct usb_function*) ; 
 int /*<<< orphan*/  hidg_class ; 
 TYPE_14__ hidg_desc ; 
 int /*<<< orphan*/  hidg_fs_descriptors ; 
 TYPE_4__ hidg_fs_in_ep_desc ; 
 TYPE_4__ hidg_fs_out_ep_desc ; 
 int /*<<< orphan*/  hidg_hs_descriptors ; 
 TYPE_11__ hidg_hs_in_ep_desc ; 
 TYPE_10__ hidg_hs_out_ep_desc ; 
 TYPE_9__ hidg_interface_desc ; 
 int /*<<< orphan*/  hidg_ss_descriptors ; 
 TYPE_8__ hidg_ss_in_comp_desc ; 
 TYPE_7__ hidg_ss_in_ep_desc ; 
 TYPE_6__ hidg_ss_out_comp_desc ; 
 TYPE_5__ hidg_ss_out_ep_desc ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  major ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct usb_function*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_ep* FUNC16 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_function*) ; 
 struct usb_string* FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct usb_configuration*,struct usb_function*) ; 

__attribute__((used)) static int FUNC20(struct usb_configuration *c, struct usb_function *f)
{
	struct usb_ep		*ep;
	struct f_hidg		*hidg = FUNC12(f);
	struct usb_string	*us;
	struct device		*device;
	int			status;
	dev_t			dev;

	/* maybe allocate device-global string IDs, and patch descriptors */
	us = FUNC18(c->cdev, ct_func_strings,
				 FUNC0(ct_func_string_defs));
	if (FUNC3(us))
		return FUNC5(us);
	hidg_interface_desc.iInterface = us[CT_FUNC_HID_IDX].id;

	/* allocate instance-specific interface IDs, and patch descriptors */
	status = FUNC19(c, f);
	if (status < 0)
		goto fail;
	hidg_interface_desc.bInterfaceNumber = status;

	/* allocate instance-specific endpoints */
	status = -ENODEV;
	ep = FUNC16(c->cdev->gadget, &hidg_fs_in_ep_desc);
	if (!ep)
		goto fail;
	hidg->in_ep = ep;

	ep = FUNC16(c->cdev->gadget, &hidg_fs_out_ep_desc);
	if (!ep)
		goto fail;
	hidg->out_ep = ep;

	/* set descriptor dynamic values */
	hidg_interface_desc.bInterfaceSubClass = hidg->bInterfaceSubClass;
	hidg_interface_desc.bInterfaceProtocol = hidg->bInterfaceProtocol;
	hidg->protocol = HID_REPORT_PROTOCOL;
	hidg_ss_in_ep_desc.wMaxPacketSize = FUNC9(hidg->report_length);
	hidg_ss_in_comp_desc.wBytesPerInterval =
				FUNC9(hidg->report_length);
	hidg_hs_in_ep_desc.wMaxPacketSize = FUNC9(hidg->report_length);
	hidg_fs_in_ep_desc.wMaxPacketSize = FUNC9(hidg->report_length);
	hidg_ss_out_ep_desc.wMaxPacketSize = FUNC9(hidg->report_length);
	hidg_ss_out_comp_desc.wBytesPerInterval =
				FUNC9(hidg->report_length);
	hidg_hs_out_ep_desc.wMaxPacketSize = FUNC9(hidg->report_length);
	hidg_fs_out_ep_desc.wMaxPacketSize = FUNC9(hidg->report_length);
	/*
	 * We can use hidg_desc struct here but we should not relay
	 * that its content won't change after returning from this function.
	 */
	hidg_desc.desc[0].bDescriptorType = HID_DT_REPORT;
	hidg_desc.desc[0].wDescriptorLength =
		FUNC9(hidg->report_desc_length);

	hidg_hs_in_ep_desc.bEndpointAddress =
		hidg_fs_in_ep_desc.bEndpointAddress;
	hidg_hs_out_ep_desc.bEndpointAddress =
		hidg_fs_out_ep_desc.bEndpointAddress;

	hidg_ss_in_ep_desc.bEndpointAddress =
		hidg_fs_in_ep_desc.bEndpointAddress;
	hidg_ss_out_ep_desc.bEndpointAddress =
		hidg_fs_out_ep_desc.bEndpointAddress;

	status = FUNC15(f, hidg_fs_descriptors,
			hidg_hs_descriptors, hidg_ss_descriptors, NULL);
	if (status)
		goto fail;

	FUNC14(&hidg->write_spinlock);
	hidg->write_pending = 1;
	hidg->req = NULL;
	FUNC14(&hidg->read_spinlock);
	FUNC13(&hidg->write_queue);
	FUNC13(&hidg->read_queue);
	FUNC2(&hidg->completed_out_req);

	/* create char device */
	FUNC8(&hidg->cdev, &f_hidg_fops);
	dev = FUNC4(major, hidg->minor);
	status = FUNC6(&hidg->cdev, dev, 1);
	if (status)
		goto fail_free_descs;

	device = FUNC10(hidg_class, NULL, dev, NULL,
			       "%s%d", "hidg", hidg->minor);
	if (FUNC3(device)) {
		status = FUNC5(device);
		goto del;
	}

	return 0;
del:
	FUNC7(&hidg->cdev);
fail_free_descs:
	FUNC17(f);
fail:
	FUNC1(f->config->cdev, "hidg_bind FAILED\n");
	if (hidg->req != NULL)
		FUNC11(hidg->in_ep, hidg->req);

	return status;
}