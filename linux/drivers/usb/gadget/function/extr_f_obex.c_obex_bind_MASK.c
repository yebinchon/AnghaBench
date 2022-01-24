#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct usb_string {int /*<<< orphan*/  id; } ;
struct usb_function {int /*<<< orphan*/  name; } ;
struct usb_ep {int /*<<< orphan*/  name; } ;
struct usb_configuration {struct usb_composite_dev* cdev; } ;
struct usb_composite_dev {TYPE_2__* gadget; } ;
struct TYPE_15__ {struct usb_ep* out; struct usb_ep* in; } ;
struct f_obex {int ctrl_id; int data_id; TYPE_1__ port; int /*<<< orphan*/  port_num; } ;
struct TYPE_21__ {int bInterfaceNumber; int /*<<< orphan*/  iInterface; } ;
struct TYPE_20__ {int bInterfaceNumber; int /*<<< orphan*/  iInterface; } ;
struct TYPE_19__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_18__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_17__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {int bMasterInterface0; int bSlaveInterface0; } ;
struct TYPE_13__ {int bInterfaceNumber; int /*<<< orphan*/  iInterface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ,struct usb_function*,int) ; 
 scalar_t__ FUNC2 (struct usb_string*) ; 
 size_t OBEX_CTRL_IDX ; 
 size_t OBEX_DATA_IDX ; 
 int FUNC3 (struct usb_string*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_configuration*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fs_function ; 
 struct f_obex* FUNC6 (struct usb_function*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  hs_function ; 
 TYPE_11__ obex_cdc_union_desc ; 
 TYPE_10__ obex_control_intf ; 
 TYPE_9__ obex_data_intf ; 
 TYPE_8__ obex_data_nop_intf ; 
 TYPE_3__ obex_fs_ep_in_desc ; 
 TYPE_3__ obex_fs_ep_out_desc ; 
 TYPE_5__ obex_hs_ep_in_desc ; 
 TYPE_4__ obex_hs_ep_out_desc ; 
 int /*<<< orphan*/  obex_string_defs ; 
 int /*<<< orphan*/  obex_strings ; 
 int FUNC8 (struct usb_function*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct usb_ep* FUNC9 (TYPE_2__*,TYPE_3__*) ; 
 struct usb_string* FUNC10 (struct usb_composite_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct usb_configuration*,struct usb_function*) ; 

__attribute__((used)) static int FUNC12(struct usb_configuration *c, struct usb_function *f)
{
	struct usb_composite_dev *cdev = c->cdev;
	struct f_obex		*obex = FUNC6(f);
	struct usb_string	*us;
	int			status;
	struct usb_ep		*ep;

	if (!FUNC4(c))
		return -EINVAL;

	us = FUNC10(cdev, obex_strings,
				 FUNC0(obex_string_defs));
	if (FUNC2(us))
		return FUNC3(us);
	obex_control_intf.iInterface = us[OBEX_CTRL_IDX].id;
	obex_data_nop_intf.iInterface = us[OBEX_DATA_IDX].id;
	obex_data_intf.iInterface = us[OBEX_DATA_IDX].id;

	/* allocate instance-specific interface IDs, and patch descriptors */

	status = FUNC11(c, f);
	if (status < 0)
		goto fail;
	obex->ctrl_id = status;

	obex_control_intf.bInterfaceNumber = status;
	obex_cdc_union_desc.bMasterInterface0 = status;

	status = FUNC11(c, f);
	if (status < 0)
		goto fail;
	obex->data_id = status;

	obex_data_nop_intf.bInterfaceNumber = status;
	obex_data_intf.bInterfaceNumber = status;
	obex_cdc_union_desc.bSlaveInterface0 = status;

	/* allocate instance-specific endpoints */

	status = -ENODEV;
	ep = FUNC9(cdev->gadget, &obex_fs_ep_in_desc);
	if (!ep)
		goto fail;
	obex->port.in = ep;

	ep = FUNC9(cdev->gadget, &obex_fs_ep_out_desc);
	if (!ep)
		goto fail;
	obex->port.out = ep;

	/* support all relevant hardware speeds... we expect that when
	 * hardware is dual speed, all bulk-capable endpoints work at
	 * both speeds
	 */

	obex_hs_ep_in_desc.bEndpointAddress =
		obex_fs_ep_in_desc.bEndpointAddress;
	obex_hs_ep_out_desc.bEndpointAddress =
		obex_fs_ep_out_desc.bEndpointAddress;

	status = FUNC8(f, fs_function, hs_function, NULL,
					NULL);
	if (status)
		goto fail;

	FUNC5(&cdev->gadget->dev, "obex ttyGS%d: %s speed IN/%s OUT/%s\n",
		obex->port_num,
		FUNC7(c->cdev->gadget) ? "dual" : "full",
		obex->port.in->name, obex->port.out->name);

	return 0;

fail:
	FUNC1(cdev, "%s/%p: can't bind, err %d\n", f->name, f, status);

	return status;
}