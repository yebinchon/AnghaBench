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
typedef  size_t uint16_t ;
struct iscsi_task {struct beiscsi_io_task* dd_data; } ;
struct hwi_wrb_context {int dummy; } ;
struct hwi_controller {struct hwi_wrb_context* wrb_context; } ;
struct beiscsi_io_task {scalar_t__ mtask_addr; int /*<<< orphan*/  mtask_data_count; int /*<<< orphan*/ * psgl_handle; int /*<<< orphan*/ * pwrb_handle; } ;
struct beiscsi_hba {TYPE_1__* pcidev; struct hwi_controller* phwi_ctrlr; } ;
struct beiscsi_conn {int /*<<< orphan*/  beiscsi_conn_cid; struct beiscsi_hba* phba; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,struct hwi_wrb_context*,int /*<<< orphan*/ *) ; 

void
FUNC4(struct beiscsi_conn *beiscsi_conn,
				struct iscsi_task *task)
{
	struct beiscsi_io_task *io_task;
	struct beiscsi_hba *phba = beiscsi_conn->phba;
	struct hwi_wrb_context *pwrb_context;
	struct hwi_controller *phwi_ctrlr;
	uint16_t cri_index = FUNC0(
				beiscsi_conn->beiscsi_conn_cid);

	phwi_ctrlr = phba->phwi_ctrlr;
	pwrb_context = &phwi_ctrlr->wrb_context[cri_index];

	io_task = task->dd_data;

	if (io_task->pwrb_handle) {
		FUNC3(phba, pwrb_context, io_task->pwrb_handle);
		io_task->pwrb_handle = NULL;
	}

	if (io_task->psgl_handle) {
		FUNC2(phba, io_task->psgl_handle);
		io_task->psgl_handle = NULL;
	}

	if (io_task->mtask_addr) {
		FUNC1(&phba->pcidev->dev,
				 io_task->mtask_addr,
				 io_task->mtask_data_count,
				 DMA_TO_DEVICE);
		io_task->mtask_addr = 0;
	}
}