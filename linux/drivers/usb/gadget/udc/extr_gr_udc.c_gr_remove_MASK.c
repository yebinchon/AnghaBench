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
struct platform_device {int dummy; } ;
struct gr_udc {int nepo; int nepi; TYPE_4__* ep0reqo; TYPE_3__* epo; TYPE_2__* ep0reqi; TYPE_1__* epi; int /*<<< orphan*/  desc_pool; scalar_t__ driver; int /*<<< orphan*/  gadget; scalar_t__ added; } ;
struct TYPE_8__ {int /*<<< orphan*/  req; } ;
struct TYPE_7__ {int /*<<< orphan*/  ep; } ;
struct TYPE_6__ {int /*<<< orphan*/  req; } ;
struct TYPE_5__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gr_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gr_udc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct gr_udc* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct gr_udc *dev = FUNC4(pdev);
	int i;

	if (dev->added)
		FUNC6(&dev->gadget); /* Shuts everything down */
	if (dev->driver)
		return -EBUSY;

	FUNC1(dev);
	FUNC0(dev->desc_pool);
	FUNC5(pdev, NULL);

	FUNC3(&dev->epi[0].ep, &dev->ep0reqi->req);
	FUNC3(&dev->epo[0].ep, &dev->ep0reqo->req);

	for (i = 0; i < dev->nepo; i++)
		FUNC2(dev, i, 0);
	for (i = 0; i < dev->nepi; i++)
		FUNC2(dev, i, 1);

	return 0;
}