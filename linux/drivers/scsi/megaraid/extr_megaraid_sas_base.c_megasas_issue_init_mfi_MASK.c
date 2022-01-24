#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct megasas_instance {int max_fw_cmds; int reply_queue_h; int producer_h; int consumer_h; TYPE_2__* pdev; TYPE_1__* instancet; } ;
struct megasas_init_queue_info {void* data_xfer_len; void* queue_info_new_phys_addr_hi; void* queue_info_new_phys_addr_lo; int /*<<< orphan*/  cmd_status; int /*<<< orphan*/  cmd; void* consumer_index_phys_addr_lo; void* producer_index_phys_addr_lo; void* reply_queue_start_phys_addr_lo; void* reply_queue_entries; int /*<<< orphan*/  context; } ;
struct megasas_init_frame {void* data_xfer_len; void* queue_info_new_phys_addr_hi; void* queue_info_new_phys_addr_lo; int /*<<< orphan*/  cmd_status; int /*<<< orphan*/  cmd; void* consumer_index_phys_addr_lo; void* producer_index_phys_addr_lo; void* reply_queue_start_phys_addr_lo; void* reply_queue_entries; int /*<<< orphan*/  context; } ;
struct megasas_cmd {scalar_t__ frame_phys_addr; scalar_t__ frame; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disable_intr ) (struct megasas_instance*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int MEGAMFI_FRAME_SIZE ; 
 int /*<<< orphan*/  MFI_CMD_INIT ; 
 int /*<<< orphan*/  MFI_STAT_INVALID_STATUS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (scalar_t__) ; 
 struct megasas_cmd* FUNC3 (struct megasas_instance*) ; 
 scalar_t__ FUNC4 (struct megasas_instance*,struct megasas_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct megasas_instance*,struct megasas_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct megasas_init_queue_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct megasas_instance*) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static int
FUNC9(struct megasas_instance *instance)
{
	__le32 context;
	struct megasas_cmd *cmd;
	struct megasas_init_frame *init_frame;
	struct megasas_init_queue_info *initq_info;
	dma_addr_t init_frame_h;
	dma_addr_t initq_info_h;

	/*
	 * Prepare a init frame. Note the init frame points to queue info
	 * structure. Each frame has SGL allocated after first 64 bytes. For
	 * this frame - since we don't need any SGL - we use SGL's space as
	 * queue info structure
	 *
	 * We will not get a NULL command below. We just created the pool.
	 */
	cmd = FUNC3(instance);

	init_frame = (struct megasas_init_frame *)cmd->frame;
	initq_info = (struct megasas_init_queue_info *)
		((unsigned long)init_frame + 64);

	init_frame_h = cmd->frame_phys_addr;
	initq_info_h = init_frame_h + 64;

	context = init_frame->context;
	FUNC6(init_frame, 0, MEGAMFI_FRAME_SIZE);
	FUNC6(initq_info, 0, sizeof(struct megasas_init_queue_info));
	init_frame->context = context;

	initq_info->reply_queue_entries = FUNC0(instance->max_fw_cmds + 1);
	initq_info->reply_queue_start_phys_addr_lo = FUNC0(instance->reply_queue_h);

	initq_info->producer_index_phys_addr_lo = FUNC0(instance->producer_h);
	initq_info->consumer_index_phys_addr_lo = FUNC0(instance->consumer_h);

	init_frame->cmd = MFI_CMD_INIT;
	init_frame->cmd_status = MFI_STAT_INVALID_STATUS;
	init_frame->queue_info_new_phys_addr_lo =
		FUNC0(FUNC2(initq_info_h));
	init_frame->queue_info_new_phys_addr_hi =
		FUNC0(FUNC8(initq_info_h));

	init_frame->data_xfer_len = FUNC0(sizeof(struct megasas_init_queue_info));

	/*
	 * disable the intr before firing the init frame to FW
	 */
	instance->instancet->disable_intr(instance);

	/*
	 * Issue the init frame in polled mode
	 */

	if (FUNC4(instance, cmd)) {
		FUNC1(&instance->pdev->dev, "Failed to init firmware\n");
		FUNC5(instance, cmd);
		goto fail_fw_init;
	}

	FUNC5(instance, cmd);

	return 0;

fail_fw_init:
	return -EINVAL;
}