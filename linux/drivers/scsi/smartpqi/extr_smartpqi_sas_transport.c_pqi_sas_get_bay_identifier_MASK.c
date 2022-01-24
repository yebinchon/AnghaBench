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
struct sas_rphy {int dummy; } ;
struct pqi_scsi_dev {int bay; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  scsi_device_list_lock; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct pqi_scsi_dev* FUNC0 (struct pqi_ctrl_info*,struct sas_rphy*) ; 
 struct Scsi_Host* FUNC1 (struct sas_rphy*) ; 
 struct pqi_ctrl_info* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct sas_rphy *rphy)
{

	int rc;
	unsigned long flags;
	struct pqi_ctrl_info *ctrl_info;
	struct pqi_scsi_dev *device;
	struct Scsi_Host *shost;

	if (!rphy)
		return -ENODEV;

	shost = FUNC1(rphy);
	ctrl_info = FUNC2(shost);
	FUNC3(&ctrl_info->scsi_device_list_lock, flags);
	device = FUNC0(ctrl_info, rphy);

	if (!device) {
		rc = -ENODEV;
		goto out;
	}

	if (device->bay == 0xff)
		rc = -EINVAL;
	else
		rc = device->bay;

out:
	FUNC4(&ctrl_info->scsi_device_list_lock, flags);

	return rc;
}