#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int max_streams; int /*<<< orphan*/  ep_list; int /*<<< orphan*/ * ops; int /*<<< orphan*/  caps; scalar_t__ name; } ;
struct dummy_ep {TYPE_3__ ep; int /*<<< orphan*/  queue; int /*<<< orphan*/ * desc; TYPE_2__* gadget; int /*<<< orphan*/  last_io; scalar_t__ setup_stage; scalar_t__ already_seen; scalar_t__ wedged; scalar_t__ halted; } ;
struct TYPE_6__ {int is_otg; TYPE_3__* ep0; int /*<<< orphan*/  ep_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
struct dummy {TYPE_2__ gadget; TYPE_1__ fifo_req; struct dummy_ep* ep; } ;
struct TYPE_8__ {int /*<<< orphan*/  caps; scalar_t__ name; } ;

/* Variables and functions */
 int DUMMY_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dummy_ep_ops ; 
 TYPE_4__* ep_info ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dummy *dum)
{
	int i;

	FUNC0(&dum->gadget.ep_list);
	for (i = 0; i < DUMMY_ENDPOINTS; i++) {
		struct dummy_ep	*ep = &dum->ep[i];

		if (!ep_info[i].name)
			break;
		ep->ep.name = ep_info[i].name;
		ep->ep.caps = ep_info[i].caps;
		ep->ep.ops = &dummy_ep_ops;
		FUNC1(&ep->ep.ep_list, &dum->gadget.ep_list);
		ep->halted = ep->wedged = ep->already_seen =
				ep->setup_stage = 0;
		FUNC3(&ep->ep, ~0);
		ep->ep.max_streams = 16;
		ep->last_io = jiffies;
		ep->gadget = &dum->gadget;
		ep->desc = NULL;
		FUNC0(&ep->queue);
	}

	dum->gadget.ep0 = &dum->ep[0].ep;
	FUNC2(&dum->ep[0].ep.ep_list);
	FUNC0(&dum->fifo_req.queue);

#ifdef CONFIG_USB_OTG
	dum->gadget.is_otg = 1;
#endif
}