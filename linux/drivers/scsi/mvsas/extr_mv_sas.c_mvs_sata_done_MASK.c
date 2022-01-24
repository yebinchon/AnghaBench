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
typedef  int /*<<< orphan*/  u32 ;
struct task_status_struct {int buf_valid_size; scalar_t__ buf; } ;
struct sas_task {struct task_status_struct task_status; TYPE_1__* dev; } ;
struct mvs_info {int dummy; } ;
struct mvs_device {int /*<<< orphan*/  taskfileset; } ;
struct dev_to_host_fis {int dummy; } ;
struct ata_task_resp {int frame_len; int /*<<< orphan*/ * ending_fis; } ;
struct TYPE_2__ {struct mvs_device* lldd_dev; } ;

/* Variables and functions */
 int CMD_ISS_STPD ; 
 int SAM_STAT_GOOD ; 
 int SAS_OPEN_REJECT ; 
 int SAS_PROTO_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct mvs_info *mvi, struct sas_task *task,
			u32 slot_idx, int err)
{
	struct mvs_device *mvi_dev = task->dev->lldd_dev;
	struct task_status_struct *tstat = &task->task_status;
	struct ata_task_resp *resp = (struct ata_task_resp *)tstat->buf;
	int stat = SAM_STAT_GOOD;


	resp->frame_len = sizeof(struct dev_to_host_fis);
	FUNC1(&resp->ending_fis[0],
	       FUNC0(mvi_dev->taskfileset),
	       sizeof(struct dev_to_host_fis));
	tstat->buf_valid_size = sizeof(*resp);
	if (FUNC2(err)) {
		if (FUNC2(err & CMD_ISS_STPD))
			stat = SAS_OPEN_REJECT;
		else
			stat = SAS_PROTO_RESPONSE;
       }

	return stat;
}