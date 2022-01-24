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
struct scsi_device {int /*<<< orphan*/  tagged_supported; } ;
struct TYPE_2__ {int /*<<< orphan*/  ap; } ;
struct domain_device {TYPE_1__ sata_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct scsi_device*,int) ; 
 scalar_t__ FUNC1 (struct domain_device*) ; 
 int FUNC2 (struct scsi_device*,int) ; 
 struct domain_device* FUNC3 (struct scsi_device*) ; 

int FUNC4(struct scsi_device *sdev, int depth)
{
	struct domain_device *dev = FUNC3(sdev);

	if (FUNC1(dev))
		return FUNC0(dev->sata_dev.ap, sdev, depth);

	if (!sdev->tagged_supported)
		depth = 1;
	return FUNC2(sdev, depth);
}