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
struct zfcp_unit {int dummy; } ;
struct zfcp_scsi_dev {int /*<<< orphan*/  status; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 struct zfcp_scsi_dev* FUNC2 (struct scsi_device*) ; 
 struct scsi_device* FUNC3 (struct zfcp_unit*) ; 

unsigned int FUNC4(struct zfcp_unit *unit)
{
	unsigned int status = 0;
	struct scsi_device *sdev;
	struct zfcp_scsi_dev *zfcp_sdev;

	sdev = FUNC3(unit);
	if (sdev) {
		zfcp_sdev = FUNC2(sdev);
		status = FUNC0(&zfcp_sdev->status);
		FUNC1(sdev);
	}

	return status;
}