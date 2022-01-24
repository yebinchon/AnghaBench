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
struct TYPE_4__ {int type_control; int dir_in; int dir_out; int type_iso; int type_bulk; int type_int; } ;
struct TYPE_6__ {int /*<<< orphan*/  ep_list; int /*<<< orphan*/ * ops; TYPE_1__ caps; int /*<<< orphan*/  name; int /*<<< orphan*/ * desc; } ;
struct mv_u3d_ep {int ep_num; int /*<<< orphan*/ * ep_context; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  req_list; TYPE_3__ ep; int /*<<< orphan*/  queue; int /*<<< orphan*/  name; struct mv_u3d* u3d; int /*<<< orphan*/  direction; int /*<<< orphan*/  ep_type; scalar_t__ wedge; } ;
struct TYPE_5__ {int /*<<< orphan*/  ep_list; } ;
struct mv_u3d {int max_eps; int /*<<< orphan*/ * ep_context; TYPE_2__ gadget; struct mv_u3d_ep* eps; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned short MV_U3D_EP0_MAX_PKT_SIZE ; 
 int /*<<< orphan*/  MV_U3D_EP_DIR_IN ; 
 int /*<<< orphan*/  MV_U3D_EP_DIR_OUT ; 
 int /*<<< orphan*/  USB_ENDPOINT_XFER_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mv_u3d_ep0_desc ; 
 int /*<<< orphan*/  mv_u3d_ep_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,unsigned short) ; 

__attribute__((used)) static int FUNC6(struct mv_u3d *u3d)
{
	struct mv_u3d_ep	*ep;
	char name[14];
	int i;

	/* initialize ep0, ep0 in/out use eps[1] */
	ep = &u3d->eps[1];
	ep->u3d = u3d;
	FUNC4(ep->name, "ep0", sizeof(ep->name));
	ep->ep.name = ep->name;
	ep->ep.ops = &mv_u3d_ep_ops;
	ep->wedge = 0;
	FUNC5(&ep->ep, MV_U3D_EP0_MAX_PKT_SIZE);
	ep->ep.caps.type_control = true;
	ep->ep.caps.dir_in = true;
	ep->ep.caps.dir_out = true;
	ep->ep_num = 0;
	ep->ep.desc = &mv_u3d_ep0_desc;
	FUNC0(&ep->queue);
	FUNC0(&ep->req_list);
	ep->ep_type = USB_ENDPOINT_XFER_CONTROL;

	/* add ep0 ep_context */
	ep->ep_context = &u3d->ep_context[1];

	/* initialize other endpoints */
	for (i = 2; i < u3d->max_eps * 2; i++) {
		ep = &u3d->eps[i];
		if (i & 1) {
			FUNC2(name, sizeof(name), "ep%din", i >> 1);
			ep->direction = MV_U3D_EP_DIR_IN;
			ep->ep.caps.dir_in = true;
		} else {
			FUNC2(name, sizeof(name), "ep%dout", i >> 1);
			ep->direction = MV_U3D_EP_DIR_OUT;
			ep->ep.caps.dir_out = true;
		}
		ep->u3d = u3d;
		FUNC4(ep->name, name, sizeof(ep->name));
		ep->ep.name = ep->name;

		ep->ep.caps.type_iso = true;
		ep->ep.caps.type_bulk = true;
		ep->ep.caps.type_int = true;

		ep->ep.ops = &mv_u3d_ep_ops;
		FUNC5(&ep->ep, (unsigned short) ~0);
		ep->ep_num = i / 2;

		FUNC0(&ep->queue);
		FUNC1(&ep->ep.ep_list, &u3d->gadget.ep_list);

		FUNC0(&ep->req_list);
		FUNC3(&ep->req_lock);
		ep->ep_context = &u3d->ep_context[i];
	}

	return 0;
}