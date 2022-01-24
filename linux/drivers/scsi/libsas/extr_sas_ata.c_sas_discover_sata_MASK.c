#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  class; } ;
struct domain_device {scalar_t__ dev_type; int /*<<< orphan*/  rphy; TYPE_1__ sata_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ SAS_SATA_PM ; 
 int /*<<< orphan*/  FUNC0 (struct domain_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct domain_device*) ; 
 int FUNC2 (struct domain_device*) ; 

int FUNC3(struct domain_device *dev)
{
	int res;

	if (dev->dev_type == SAS_SATA_PM)
		return -ENODEV;

	dev->sata_dev.class = FUNC1(dev);
	FUNC0(dev, dev->rphy);

	res = FUNC2(dev);
	if (res)
		return res;

	return 0;
}