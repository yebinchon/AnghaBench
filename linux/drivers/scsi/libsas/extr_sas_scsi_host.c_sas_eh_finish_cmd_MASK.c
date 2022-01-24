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
struct scsi_cmnd {int /*<<< orphan*/  eh_entry; TYPE_1__* device; } ;
struct sas_task {int dummy; } ;
struct sas_ha_struct {int /*<<< orphan*/  eh_done_q; int /*<<< orphan*/  eh_ata_q; } ;
struct domain_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct sas_ha_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sas_task* FUNC1 (struct scsi_cmnd*) ; 
 struct domain_device* FUNC2 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC3 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,struct sas_task*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct scsi_cmnd *cmd)
{
	struct sas_ha_struct *sas_ha = FUNC0(cmd->device->host);
	struct domain_device *dev = FUNC2(cmd);
	struct sas_task *task = FUNC1(cmd);

	/* At this point, we only get called following an actual abort
	 * of the task, so we should be guaranteed not to be racing with
	 * any completions from the LLD.  Task is freed after this.
	 */
	FUNC5(cmd, task);

	if (FUNC3(dev)) {
		/* defer commands to libata so that libata EH can
		 * handle ata qcs correctly
		 */
		FUNC4(&cmd->eh_entry, &sas_ha->eh_ata_q);
		return;
	}

	/* now finish the command and move it on to the error
	 * handler done list, this also takes it off the
	 * error handler pending list.
	 */
	FUNC6(cmd, &sas_ha->eh_done_q);
}