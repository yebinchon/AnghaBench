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
struct lpfc_vport {scalar_t__ port_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct Scsi_Host {TYPE_1__ shost_dev; } ;

/* Variables and functions */
 scalar_t__ LPFC_NPIV_PORT ; 
 struct Scsi_Host* FUNC0 (struct lpfc_vport*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_ctlreg_attr ; 
 int /*<<< orphan*/  sysfs_drvr_stat_data_attr ; 
 int /*<<< orphan*/  sysfs_mbox_attr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct lpfc_vport *vport)
{
	struct Scsi_Host *shost = FUNC0(vport);
	int error;

	error = FUNC1(&shost->shost_dev.kobj,
				      &sysfs_drvr_stat_data_attr);

	/* Virtual ports do not need ctrl_reg and mbox */
	if (error || vport->port_type == LPFC_NPIV_PORT)
		goto out;

	error = FUNC1(&shost->shost_dev.kobj,
				      &sysfs_ctlreg_attr);
	if (error)
		goto out_remove_stat_attr;

	error = FUNC1(&shost->shost_dev.kobj,
				      &sysfs_mbox_attr);
	if (error)
		goto out_remove_ctlreg_attr;

	return 0;
out_remove_ctlreg_attr:
	FUNC2(&shost->shost_dev.kobj, &sysfs_ctlreg_attr);
out_remove_stat_attr:
	FUNC2(&shost->shost_dev.kobj,
			&sysfs_drvr_stat_data_attr);
out:
	return error;
}