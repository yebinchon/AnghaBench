#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_20__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_19__ ;
typedef  struct TYPE_26__   TYPE_18__ ;
typedef  struct TYPE_25__   TYPE_14__ ;
typedef  struct TYPE_24__   TYPE_13__ ;
typedef  struct TYPE_23__   TYPE_12__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
struct usb_string {int /*<<< orphan*/  id; } ;
struct usb_function {int /*<<< orphan*/  name; } ;
struct usb_ep {int /*<<< orphan*/  name; } ;
struct usb_configuration {struct usb_composite_dev* cdev; } ;
struct usb_composite_dev {TYPE_2__* gadget; } ;
struct usb_cdc_notification {int dummy; } ;
struct TYPE_28__ {struct usb_ep* out; struct usb_ep* in; } ;
struct f_acm {int ctrl_id; int data_id; TYPE_4__* notify_req; struct usb_ep* notify; TYPE_1__ port; int /*<<< orphan*/  port_num; } ;
struct TYPE_34__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_33__ {int bMasterInterface0; int bSlaveInterface0; } ;
struct TYPE_32__ {struct f_acm* context; int /*<<< orphan*/  complete; } ;
struct TYPE_31__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_30__ {int /*<<< orphan*/  dev; } ;
struct TYPE_29__ {int bDataInterface; } ;
struct TYPE_27__ {int bInterfaceNumber; int /*<<< orphan*/  iInterface; } ;
struct TYPE_26__ {int bInterfaceNumber; int /*<<< orphan*/  iInterface; } ;
struct TYPE_25__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_24__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_23__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_22__ {int bFirstInterface; int /*<<< orphan*/  iFunction; } ;
struct TYPE_21__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 size_t ACM_CTRL_IDX ; 
 size_t ACM_DATA_IDX ; 
 size_t ACM_IAD_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ,struct usb_function*,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct usb_string*) ; 
 int FUNC3 (struct usb_string*) ; 
 TYPE_20__ acm_call_mgmt_descriptor ; 
 int /*<<< orphan*/  acm_cdc_notify_complete ; 
 TYPE_19__ acm_control_interface_desc ; 
 TYPE_18__ acm_data_interface_desc ; 
 int /*<<< orphan*/  acm_fs_function ; 
 TYPE_3__ acm_fs_in_desc ; 
 TYPE_3__ acm_fs_notify_desc ; 
 TYPE_3__ acm_fs_out_desc ; 
 int /*<<< orphan*/  acm_hs_function ; 
 TYPE_14__ acm_hs_in_desc ; 
 TYPE_13__ acm_hs_notify_desc ; 
 TYPE_12__ acm_hs_out_desc ; 
 TYPE_11__ acm_iad_descriptor ; 
 int /*<<< orphan*/  acm_ss_function ; 
 TYPE_10__ acm_ss_in_desc ; 
 TYPE_9__ acm_ss_out_desc ; 
 int /*<<< orphan*/  acm_string_defs ; 
 int /*<<< orphan*/  acm_strings ; 
 TYPE_8__ acm_union_desc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f_acm* FUNC5 (struct usb_function*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 TYPE_4__* FUNC8 (struct usb_ep*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_ep*,TYPE_4__*) ; 
 int FUNC10 (struct usb_function*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_ep* FUNC11 (TYPE_2__*,TYPE_3__*) ; 
 struct usb_string* FUNC12 (struct usb_composite_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct usb_configuration*,struct usb_function*) ; 

__attribute__((used)) static int
FUNC14(struct usb_configuration *c, struct usb_function *f)
{
	struct usb_composite_dev *cdev = c->cdev;
	struct f_acm		*acm = FUNC5(f);
	struct usb_string	*us;
	int			status;
	struct usb_ep		*ep;

	/* REVISIT might want instance-specific strings to help
	 * distinguish instances ...
	 */

	/* maybe allocate device-global string IDs, and patch descriptors */
	us = FUNC12(cdev, acm_strings,
			FUNC0(acm_string_defs));
	if (FUNC2(us))
		return FUNC3(us);
	acm_control_interface_desc.iInterface = us[ACM_CTRL_IDX].id;
	acm_data_interface_desc.iInterface = us[ACM_DATA_IDX].id;
	acm_iad_descriptor.iFunction = us[ACM_IAD_IDX].id;

	/* allocate instance-specific interface IDs, and patch descriptors */
	status = FUNC13(c, f);
	if (status < 0)
		goto fail;
	acm->ctrl_id = status;
	acm_iad_descriptor.bFirstInterface = status;

	acm_control_interface_desc.bInterfaceNumber = status;
	acm_union_desc .bMasterInterface0 = status;

	status = FUNC13(c, f);
	if (status < 0)
		goto fail;
	acm->data_id = status;

	acm_data_interface_desc.bInterfaceNumber = status;
	acm_union_desc.bSlaveInterface0 = status;
	acm_call_mgmt_descriptor.bDataInterface = status;

	status = -ENODEV;

	/* allocate instance-specific endpoints */
	ep = FUNC11(cdev->gadget, &acm_fs_in_desc);
	if (!ep)
		goto fail;
	acm->port.in = ep;

	ep = FUNC11(cdev->gadget, &acm_fs_out_desc);
	if (!ep)
		goto fail;
	acm->port.out = ep;

	ep = FUNC11(cdev->gadget, &acm_fs_notify_desc);
	if (!ep)
		goto fail;
	acm->notify = ep;

	/* allocate notification */
	acm->notify_req = FUNC8(ep,
			sizeof(struct usb_cdc_notification) + 2,
			GFP_KERNEL);
	if (!acm->notify_req)
		goto fail;

	acm->notify_req->complete = acm_cdc_notify_complete;
	acm->notify_req->context = acm;

	/* support all relevant hardware speeds... we expect that when
	 * hardware is dual speed, all bulk-capable endpoints work at
	 * both speeds
	 */
	acm_hs_in_desc.bEndpointAddress = acm_fs_in_desc.bEndpointAddress;
	acm_hs_out_desc.bEndpointAddress = acm_fs_out_desc.bEndpointAddress;
	acm_hs_notify_desc.bEndpointAddress =
		acm_fs_notify_desc.bEndpointAddress;

	acm_ss_in_desc.bEndpointAddress = acm_fs_in_desc.bEndpointAddress;
	acm_ss_out_desc.bEndpointAddress = acm_fs_out_desc.bEndpointAddress;

	status = FUNC10(f, acm_fs_function, acm_hs_function,
			acm_ss_function, NULL);
	if (status)
		goto fail;

	FUNC4(&cdev->gadget->dev,
		"acm ttyGS%d: %s speed IN/%s OUT/%s NOTIFY/%s\n",
		acm->port_num,
		FUNC7(c->cdev->gadget) ? "super" :
		FUNC6(c->cdev->gadget) ? "dual" : "full",
		acm->port.in->name, acm->port.out->name,
		acm->notify->name);
	return 0;

fail:
	if (acm->notify_req)
		FUNC9(acm->notify, acm->notify_req);

	FUNC1(cdev, "%s/%p: can't bind, err %d\n", f->name, f, status);

	return status;
}