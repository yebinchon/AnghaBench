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
struct scsi_target {int dummy; } ;
struct scsi_device {struct hpsa_scsi_dev_t* hostdata; int /*<<< orphan*/  lun; } ;
struct sas_rphy {int dummy; } ;
struct hpsa_scsi_dev_t {int /*<<< orphan*/  ioaccel_cmds_out; scalar_t__ expose_device; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; } ;
struct ctlr_info {int /*<<< orphan*/  devlock; } ;

/* Variables and functions */
 scalar_t__ HPSA_PHYSICAL_DEVICE_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hpsa_scsi_dev_t* FUNC1 (struct ctlr_info*,struct sas_rphy*) ; 
 struct hpsa_scsi_dev_t* FUNC2 (struct ctlr_info*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct scsi_target* FUNC3 (struct scsi_device*) ; 
 scalar_t__ FUNC4 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*) ; 
 struct ctlr_info* FUNC6 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sas_rphy* FUNC9 (struct scsi_target*) ; 

__attribute__((used)) static int FUNC10(struct scsi_device *sdev)
{
	struct hpsa_scsi_dev_t *sd = NULL;
	unsigned long flags;
	struct ctlr_info *h;

	h = FUNC6(sdev);
	FUNC7(&h->devlock, flags);
	if (FUNC4(sdev) == HPSA_PHYSICAL_DEVICE_BUS) {
		struct scsi_target *starget;
		struct sas_rphy *rphy;

		starget = FUNC3(sdev);
		rphy = FUNC9(starget);
		sd = FUNC1(h, rphy);
		if (sd) {
			sd->target = FUNC5(sdev);
			sd->lun = sdev->lun;
		}
	}
	if (!sd)
		sd = FUNC2(h, FUNC4(sdev),
					FUNC5(sdev), sdev->lun);

	if (sd && sd->expose_device) {
		FUNC0(&sd->ioaccel_cmds_out, 0);
		sdev->hostdata = sd;
	} else
		sdev->hostdata = NULL;
	FUNC8(&h->devlock, flags);
	return 0;
}