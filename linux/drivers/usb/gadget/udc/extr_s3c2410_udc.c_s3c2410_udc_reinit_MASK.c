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
typedef  size_t u32 ;
struct TYPE_5__ {int /*<<< orphan*/  ep_list; TYPE_1__* ep0; } ;
struct s3c2410_udc {TYPE_2__ gadget; struct s3c2410_ep* ep; int /*<<< orphan*/  ep0state; } ;
struct TYPE_6__ {int /*<<< orphan*/  maxpacket; int /*<<< orphan*/ * desc; int /*<<< orphan*/  ep_list; } ;
struct s3c2410_ep {TYPE_3__ ep; int /*<<< orphan*/  queue; scalar_t__ halted; struct s3c2410_udc* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ep_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP0_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t S3C2410_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct s3c2410_udc *dev)
{
	u32 i;

	/* device/ep0 records init */
	FUNC0(&dev->gadget.ep_list);
	FUNC0(&dev->gadget.ep0->ep_list);
	dev->ep0state = EP0_IDLE;

	for (i = 0; i < S3C2410_ENDPOINTS; i++) {
		struct s3c2410_ep *ep = &dev->ep[i];

		if (i != 0)
			FUNC1(&ep->ep.ep_list, &dev->gadget.ep_list);

		ep->dev = dev;
		ep->ep.desc = NULL;
		ep->halted = 0;
		FUNC0(&ep->queue);
		FUNC2(&ep->ep, ep->ep.maxpacket);
	}
}