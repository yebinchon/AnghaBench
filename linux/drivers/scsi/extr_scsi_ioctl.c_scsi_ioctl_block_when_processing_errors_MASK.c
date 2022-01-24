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
struct scsi_device {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int SG_SCSI_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct scsi_device *sdev, int cmd,
		bool ndelay)
{
	if (cmd == SG_SCSI_RESET && ndelay) {
		if (FUNC1(sdev->host))
			return -EAGAIN;
	} else {
		if (!FUNC0(sdev))
			return -ENODEV;
	}

	return 0;
}