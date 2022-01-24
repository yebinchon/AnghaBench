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
struct megasas_instance {int issuepend_done; int flag_ieee; int unload; int disableOnlineCtrlReset; int smp_affinity_enable; int msix_load_balance; scalar_t__ adapter_type; int /*<<< orphan*/  work_init; scalar_t__ UnevenSpanSupport; scalar_t__ last_time; scalar_t__ flag; TYPE_1__* pdev; int /*<<< orphan*/  reset_mutex; int /*<<< orphan*/  completion_lock; int /*<<< orphan*/  stream_lock; int /*<<< orphan*/  hba_lock; int /*<<< orphan*/  mfi_pool_lock; int /*<<< orphan*/  crashdump_lock; int /*<<< orphan*/  abort_cmd_wait_q; int /*<<< orphan*/  int_cmd_wait_q; int /*<<< orphan*/  total_io_count; int /*<<< orphan*/  fw_outstanding; int /*<<< orphan*/  internal_reset_pending_q; int /*<<< orphan*/  cmd_pool; int /*<<< orphan*/  adprecovery; int /*<<< orphan*/  fw_crash_state; } ;
struct TYPE_2__ {scalar_t__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEGASAS_HBA_OPERATIONAL ; 
 scalar_t__ MFI_SERIES ; 
 scalar_t__ PCI_DEVICE_ID_LSI_SAS0071SKINNY ; 
 scalar_t__ PCI_DEVICE_ID_LSI_SAS0073SKINNY ; 
 int /*<<< orphan*/  UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ megasas_dbg_lvl ; 
 int /*<<< orphan*/  megasas_fusion_ocr_wq ; 
 scalar_t__ megasas_poll_wait_aen ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  process_fw_state_change_wq ; 
 scalar_t__ smp_affinity_enable ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct megasas_instance *instance)
{
	instance->fw_crash_state = UNAVAILABLE;

	megasas_poll_wait_aen = 0;
	instance->issuepend_done = 1;
	FUNC3(&instance->adprecovery, MEGASAS_HBA_OPERATIONAL);

	/*
	 * Initialize locks and queues
	 */
	FUNC0(&instance->cmd_pool);
	FUNC0(&instance->internal_reset_pending_q);

	FUNC3(&instance->fw_outstanding, 0);
	FUNC2(&instance->total_io_count, 0);

	FUNC4(&instance->int_cmd_wait_q);
	FUNC4(&instance->abort_cmd_wait_q);

	FUNC6(&instance->crashdump_lock);
	FUNC6(&instance->mfi_pool_lock);
	FUNC6(&instance->hba_lock);
	FUNC6(&instance->stream_lock);
	FUNC6(&instance->completion_lock);

	FUNC5(&instance->reset_mutex);

	if ((instance->pdev->device == PCI_DEVICE_ID_LSI_SAS0073SKINNY) ||
	    (instance->pdev->device == PCI_DEVICE_ID_LSI_SAS0071SKINNY))
		instance->flag_ieee = 1;

	megasas_dbg_lvl = 0;
	instance->flag = 0;
	instance->unload = 1;
	instance->last_time = 0;
	instance->disableOnlineCtrlReset = 1;
	instance->UnevenSpanSupport = 0;
	instance->smp_affinity_enable = smp_affinity_enable ? true : false;
	instance->msix_load_balance = false;

	if (instance->adapter_type != MFI_SERIES)
		FUNC1(&instance->work_init, megasas_fusion_ocr_wq);
	else
		FUNC1(&instance->work_init, process_fw_state_change_wq);
}