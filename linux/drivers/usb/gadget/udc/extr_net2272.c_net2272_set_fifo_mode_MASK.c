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
typedef  int u8 ;
struct TYPE_5__ {int /*<<< orphan*/  ep_list; } ;
struct net2272 {TYPE_3__* ep; TYPE_2__ gadget; } ;
struct TYPE_4__ {int /*<<< orphan*/  ep_list; } ;
struct TYPE_6__ {int fifo_size; TYPE_1__ ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCCTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct net2272*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net2272*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct net2272 *dev, int mode)
{
	u8 tmp;

	tmp = FUNC2(dev, LOCCTL) & 0x3f;
	tmp |= (mode << 6);
	FUNC3(dev, LOCCTL, tmp);

	FUNC0(&dev->gadget.ep_list);

	/* always ep-a, ep-c ... maybe not ep-b */
	FUNC1(&dev->ep[1].ep.ep_list, &dev->gadget.ep_list);

	switch (mode) {
	case 0:
		FUNC1(&dev->ep[2].ep.ep_list, &dev->gadget.ep_list);
		dev->ep[1].fifo_size = dev->ep[2].fifo_size = 512;
		break;
	case 1:
		FUNC1(&dev->ep[2].ep.ep_list, &dev->gadget.ep_list);
		dev->ep[1].fifo_size = 1024;
		dev->ep[2].fifo_size = 512;
		break;
	case 2:
		FUNC1(&dev->ep[2].ep.ep_list, &dev->gadget.ep_list);
		dev->ep[1].fifo_size = dev->ep[2].fifo_size = 1024;
		break;
	case 3:
		dev->ep[1].fifo_size = 1024;
		break;
	}

	/* ep-c is always 2 512 byte buffers */
	FUNC1(&dev->ep[3].ep.ep_list, &dev->gadget.ep_list);
	dev->ep[3].fifo_size = 512;
}