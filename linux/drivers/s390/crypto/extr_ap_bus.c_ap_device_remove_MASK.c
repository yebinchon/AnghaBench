#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct ap_driver {int /*<<< orphan*/  (* remove ) (struct ap_device*) ;} ;
struct ap_device {struct ap_driver* drv; } ;
struct TYPE_6__ {int /*<<< orphan*/  list; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ap_list_lock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ap_device*) ; 
 TYPE_2__* FUNC8 (struct device*) ; 
 struct ap_device* FUNC9 (struct device*) ; 
 TYPE_1__* FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct ap_device *ap_dev = FUNC9(dev);
	struct ap_driver *ap_drv = ap_dev->drv;

	/* prepare ap queue device removal */
	if (FUNC3(dev))
		FUNC0(FUNC10(dev));

	/* driver's chance to clean up gracefully */
	if (ap_drv->remove)
		ap_drv->remove(ap_dev);

	/* now do the ap queue device remove */
	if (FUNC3(dev))
		FUNC1(FUNC10(dev));

	/* Remove queue/card from list of active queues/cards */
	FUNC5(&ap_list_lock);
	if (FUNC2(dev))
		FUNC4(&FUNC8(dev)->list);
	else
		FUNC4(&FUNC10(dev)->list);
	FUNC6(&ap_list_lock);

	return 0;
}