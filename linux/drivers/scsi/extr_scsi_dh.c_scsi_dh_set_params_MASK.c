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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; TYPE_1__* handler; } ;
struct request_queue {int dummy; } ;
struct TYPE_2__ {int (* set_params ) (struct scsi_device*,char const*) ;} ;

/* Variables and functions */
 int SCSI_DH_NOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct scsi_device* FUNC1 (struct request_queue*) ; 
 int FUNC2 (struct scsi_device*,char const*) ; 

int FUNC3(struct request_queue *q, const char *params)
{
	struct scsi_device *sdev;
	int err = -SCSI_DH_NOSYS;

	sdev = FUNC1(q);
	if (!sdev)
		return err;

	if (sdev->handler && sdev->handler->set_params)
		err = sdev->handler->set_params(sdev, params);
	FUNC0(&sdev->sdev_gendev);
	return err;
}