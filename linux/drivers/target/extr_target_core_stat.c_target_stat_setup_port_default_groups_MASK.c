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
struct TYPE_2__ {int /*<<< orphan*/  stat_group; int /*<<< orphan*/  scsi_transport_group; int /*<<< orphan*/  scsi_tgt_port_group; int /*<<< orphan*/  scsi_port_group; } ;
struct se_lun {TYPE_1__ port_stat_grps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  target_stat_scsi_port_cit ; 
 int /*<<< orphan*/  target_stat_scsi_tgt_port_cit ; 
 int /*<<< orphan*/  target_stat_scsi_transport_cit ; 

void FUNC2(struct se_lun *lun)
{
	FUNC0(&lun->port_stat_grps.scsi_port_group,
			"scsi_port", &target_stat_scsi_port_cit);
	FUNC1(&lun->port_stat_grps.scsi_port_group,
			&lun->port_stat_grps.stat_group);

	FUNC0(&lun->port_stat_grps.scsi_tgt_port_group,
			"scsi_tgt_port", &target_stat_scsi_tgt_port_cit);
	FUNC1(&lun->port_stat_grps.scsi_tgt_port_group,
			&lun->port_stat_grps.stat_group);

	FUNC0(&lun->port_stat_grps.scsi_transport_group,
			"scsi_transport", &target_stat_scsi_transport_cit);
	FUNC1(&lun->port_stat_grps.scsi_transport_group,
			&lun->port_stat_grps.stat_group);
}