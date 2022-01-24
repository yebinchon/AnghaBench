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
struct scsi_device {int dummy; } ;
struct domain_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int) ; 
 int FUNC2 (struct scsi_device*) ; 
 struct domain_device* FUNC3 (struct scsi_device*) ; 

int FUNC4(struct scsi_device *sdev)
{
	struct domain_device *dev = FUNC3(sdev);
	int ret = FUNC2(sdev);

	if (ret)
		return ret;
	if (!FUNC0(dev))
		FUNC1(sdev, 64);

	return 0;
}