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
struct scsi_device_handler {int dummy; } ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; struct scsi_device_handler* handler; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct scsi_device* FUNC1 (struct request_queue*) ; 
 int FUNC2 (struct scsi_device*,struct scsi_device_handler*) ; 
 struct scsi_device_handler* FUNC3 (char const*) ; 

int FUNC4(struct request_queue *q, const char *name)
{
	struct scsi_device *sdev;
	struct scsi_device_handler *scsi_dh;
	int err = 0;

	sdev = FUNC1(q);
	if (!sdev)
		return -ENODEV;

	scsi_dh = FUNC3(name);
	if (!scsi_dh) {
		err = -EINVAL;
		goto out_put_device;
	}

	if (sdev->handler) {
		if (sdev->handler != scsi_dh)
			err = -EBUSY;
		goto out_put_device;
	}

	err = FUNC2(sdev, scsi_dh);

out_put_device:
	FUNC0(&sdev->sdev_gendev);
	return err;
}