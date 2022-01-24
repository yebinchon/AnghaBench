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
struct TYPE_2__ {int /*<<< orphan*/  smp_req; int /*<<< orphan*/  smp_resp; } ;
struct sas_task {int task_proto; int num_scatter; int /*<<< orphan*/ * lldd_task; TYPE_1__ smp_task; int /*<<< orphan*/  data_dir; int /*<<< orphan*/ * scatter; } ;
struct pm8001_hba_info {int /*<<< orphan*/  dev; } ;
struct pm8001_ccb_info {int ccb_tag; scalar_t__ open_retry; int /*<<< orphan*/ * task; scalar_t__ n_elem; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
#define  SAS_PROTOCOL_SATA 131 
#define  SAS_PROTOCOL_SMP 130 
#define  SAS_PROTOCOL_SSP 129 
#define  SAS_PROTOCOL_STP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct pm8001_hba_info *pm8001_ha,
	struct sas_task *task, struct pm8001_ccb_info *ccb, u32 ccb_idx)
{
	if (!ccb->task)
		return;
	if (!FUNC2(task->task_proto))
		if (ccb->n_elem)
			FUNC0(pm8001_ha->dev, task->scatter,
				task->num_scatter, task->data_dir);

	switch (task->task_proto) {
	case SAS_PROTOCOL_SMP:
		FUNC0(pm8001_ha->dev, &task->smp_task.smp_resp, 1,
			DMA_FROM_DEVICE);
		FUNC0(pm8001_ha->dev, &task->smp_task.smp_req, 1,
			DMA_TO_DEVICE);
		break;

	case SAS_PROTOCOL_SATA:
	case SAS_PROTOCOL_STP:
	case SAS_PROTOCOL_SSP:
	default:
		/* do nothing */
		break;
	}
	task->lldd_task = NULL;
	ccb->task = NULL;
	ccb->ccb_tag = 0xFFFFFFFF;
	ccb->open_retry = 0;
	FUNC1(pm8001_ha, ccb_idx);
}