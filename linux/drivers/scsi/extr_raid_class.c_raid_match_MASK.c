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
struct scsi_device {TYPE_1__* host; } ;
struct raid_internal {TYPE_2__* f; } ;
struct device {int dummy; } ;
struct attribute_container {int dummy; } ;
struct TYPE_4__ {scalar_t__ cookie; int (* is_raid ) (struct device*) ;} ;
struct TYPE_3__ {scalar_t__ hostt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SCSI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct raid_internal* FUNC1 (struct attribute_container*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct attribute_container *cont, struct device *dev)
{
	/* We have to look for every subsystem that could house
	 * emulated RAID devices, so start with SCSI */
	struct raid_internal *i = FUNC1(cont);

	if (FUNC0(CONFIG_SCSI) && FUNC2(dev)) {
		struct scsi_device *sdev = FUNC4(dev);

		if (i->f->cookie != sdev->host->hostt)
			return 0;

		return i->f->is_raid(dev);
	}
	/* FIXME: look at other subsystems too */
	return 0;
}