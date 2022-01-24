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
struct scsi_cd {int /*<<< orphan*/  cdi; TYPE_1__* device; } ;
struct gendisk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  disk_events_disable_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 struct scsi_cd* FUNC2 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cd*) ; 

__attribute__((used)) static unsigned int FUNC4(struct gendisk *disk,
					  unsigned int clearing)
{
	unsigned int ret = 0;
	struct scsi_cd *cd;

	cd = FUNC2(disk);
	if (!cd)
		return 0;

	if (!FUNC0(&cd->device->disk_events_disable_depth))
		ret = FUNC1(&cd->cdi, clearing);

	FUNC3(cd);
	return ret;
}