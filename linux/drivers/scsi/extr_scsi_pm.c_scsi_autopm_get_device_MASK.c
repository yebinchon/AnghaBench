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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;

/* Variables and functions */
 int EACCES ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct scsi_device *sdev)
{
	int	err;

	err = FUNC0(&sdev->sdev_gendev);
	if (err < 0 && err !=-EACCES)
		FUNC1(&sdev->sdev_gendev);
	else
		err = 0;
	return err;
}