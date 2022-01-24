#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  emulate_pr; } ;
struct se_device {int dev_reservation_flags; int /*<<< orphan*/  dev_reservation_lock; TYPE_2__* transport; TYPE_1__ dev_attrib; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int transport_flags; } ;

/* Variables and functions */
 int DRF_SPC2_RESERVATIONS ; 
 int TRANSPORT_FLAG_PASSTHROUGH_PGR ; 
 struct se_device* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*) ; 
 int FUNC4 (struct se_device*,char*) ; 
 int FUNC5 (struct se_device*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item, char *page)
{
	struct se_device *dev = FUNC0(item);
	int ret;

	if (!dev->dev_attrib.emulate_pr)
		return FUNC3(page, "SPC_RESERVATIONS_DISABLED\n");

	if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH_PGR)
		return FUNC3(page, "Passthrough\n");

	FUNC1(&dev->dev_reservation_lock);
	if (dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS)
		ret = FUNC4(dev, page);
	else
		ret = FUNC5(dev, page);
	FUNC2(&dev->dev_reservation_lock);
	return ret;
}