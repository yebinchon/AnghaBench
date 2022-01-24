#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct aac_dev {int /*<<< orphan*/  scan_mutex; int /*<<< orphan*/  scsi_host_ptr; scalar_t__ sa_firmware; } ;

/* Variables and functions */
 int FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct aac_dev *dev)
{
	int rcode = 0;

	FUNC1(&dev->scan_mutex);
	if (dev->sa_firmware)
		rcode = FUNC0(dev);
	else
		FUNC3(dev->scsi_host_ptr);
	FUNC2(&dev->scan_mutex);

	return rcode;
}