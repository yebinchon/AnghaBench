#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct usb_function {int /*<<< orphan*/  name; } ;
struct usb_configuration {struct usb_composite_dev* cdev; } ;
struct usb_composite_dev {TYPE_3__* gadget; } ;
struct f_loopback {TYPE_2__* out_ep; TYPE_1__* in_ep; } ;
struct TYPE_24__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_23__ {int bInterfaceNumber; int iInterface; } ;
struct TYPE_22__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_21__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_20__ {int id; } ;
struct TYPE_19__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_18__ {int /*<<< orphan*/  name; } ;
struct TYPE_17__ {int /*<<< orphan*/  name; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;
struct TYPE_15__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ fs_loop_sink_desc ; 
 TYPE_4__ fs_loop_source_desc ; 
 int /*<<< orphan*/  fs_loopback_descs ; 
 struct f_loopback* FUNC2 (struct usb_function*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 TYPE_10__ hs_loop_sink_desc ; 
 TYPE_9__ hs_loop_source_desc ; 
 int /*<<< orphan*/  hs_loopback_descs ; 
 TYPE_8__ loopback_intf ; 
 TYPE_7__ ss_loop_sink_desc ; 
 TYPE_6__ ss_loop_source_desc ; 
 int /*<<< orphan*/  ss_loopback_descs ; 
 TYPE_5__* strings_loopback ; 
 int FUNC5 (struct usb_function*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC7 (struct usb_configuration*,struct usb_function*) ; 
 int FUNC8 (struct usb_composite_dev*) ; 

__attribute__((used)) static int FUNC9(struct usb_configuration *c, struct usb_function *f)
{
	struct usb_composite_dev *cdev = c->cdev;
	struct f_loopback	*loop = FUNC2(f);
	int			id;
	int ret;

	/* allocate interface ID(s) */
	id = FUNC7(c, f);
	if (id < 0)
		return id;
	loopback_intf.bInterfaceNumber = id;

	id = FUNC8(cdev);
	if (id < 0)
		return id;
	strings_loopback[0].id = id;
	loopback_intf.iInterface = id;

	/* allocate endpoints */

	loop->in_ep = FUNC6(cdev->gadget, &fs_loop_source_desc);
	if (!loop->in_ep) {
autoconf_fail:
		FUNC1(cdev, "%s: can't autoconfigure on %s\n",
			f->name, cdev->gadget->name);
		return -ENODEV;
	}

	loop->out_ep = FUNC6(cdev->gadget, &fs_loop_sink_desc);
	if (!loop->out_ep)
		goto autoconf_fail;

	/* support high speed hardware */
	hs_loop_source_desc.bEndpointAddress =
		fs_loop_source_desc.bEndpointAddress;
	hs_loop_sink_desc.bEndpointAddress = fs_loop_sink_desc.bEndpointAddress;

	/* support super speed hardware */
	ss_loop_source_desc.bEndpointAddress =
		fs_loop_source_desc.bEndpointAddress;
	ss_loop_sink_desc.bEndpointAddress = fs_loop_sink_desc.bEndpointAddress;

	ret = FUNC5(f, fs_loopback_descs, hs_loopback_descs,
			ss_loopback_descs, NULL);
	if (ret)
		return ret;

	FUNC0(cdev, "%s speed %s: IN/%s, OUT/%s\n",
	    (FUNC4(c->cdev->gadget) ? "super" :
	     (FUNC3(c->cdev->gadget) ? "dual" : "full")),
			f->name, loop->in_ep->name, loop->out_ep->name);
	return 0;
}