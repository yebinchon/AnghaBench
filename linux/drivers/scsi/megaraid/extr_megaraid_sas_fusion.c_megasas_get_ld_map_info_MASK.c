#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct megasas_instance {int map_id; int /*<<< orphan*/  mask_interrupts; TYPE_2__* pdev; struct fusion_context* ctrl_context; } ;
struct TYPE_6__ {void* b; } ;
struct megasas_dcmd_frame {int cmd_status; int sge_count; void* opcode; void* data_xfer_len; scalar_t__ pad_0; scalar_t__ timeout; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd; TYPE_3__ mbox; } ;
struct megasas_cmd {TYPE_1__* frame; } ;
struct fusion_context {int /*<<< orphan*/  max_map_sz; int /*<<< orphan*/ * ld_map_phys; scalar_t__* ld_map; int /*<<< orphan*/  current_map_sz; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct megasas_dcmd_frame dcmd; } ;

/* Variables and functions */
 int DCMD_TIMEOUT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  MFI_CMD_DCMD ; 
 int /*<<< orphan*/  MFI_FRAME_DIR_READ ; 
 int /*<<< orphan*/  MFI_IO_TIMEOUT_SECS ; 
 int /*<<< orphan*/  MFI_MBOX_SIZE ; 
 int /*<<< orphan*/  MR_DCMD_LD_MAP_GET_INFO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct megasas_instance*) ; 
 struct megasas_cmd* FUNC3 (struct megasas_instance*) ; 
 int FUNC4 (struct megasas_instance*,struct megasas_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct megasas_instance*,struct megasas_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct megasas_instance*,struct megasas_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (struct megasas_instance*,struct megasas_dcmd_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct megasas_instance *instance)
{
	int ret = 0;
	struct megasas_cmd *cmd;
	struct megasas_dcmd_frame *dcmd;
	void *ci;
	dma_addr_t ci_h = 0;
	u32 size_map_info;
	struct fusion_context *fusion;

	cmd = FUNC3(instance);

	if (!cmd) {
		FUNC1(KERN_DEBUG, &instance->pdev->dev, "Failed to get cmd for map info\n");
		return -ENOMEM;
	}

	fusion = instance->ctrl_context;

	if (!fusion) {
		FUNC6(instance, cmd);
		return -ENXIO;
	}

	dcmd = &cmd->frame->dcmd;

	size_map_info = fusion->current_map_sz;

	ci = (void *) fusion->ld_map[(instance->map_id & 1)];
	ci_h = fusion->ld_map_phys[(instance->map_id & 1)];

	if (!ci) {
		FUNC1(KERN_DEBUG, &instance->pdev->dev, "Failed to alloc mem for ld_map_info\n");
		FUNC6(instance, cmd);
		return -ENOMEM;
	}

	FUNC8(ci, 0, fusion->max_map_sz);
	FUNC8(dcmd->mbox.b, 0, MFI_MBOX_SIZE);
	dcmd->cmd = MFI_CMD_DCMD;
	dcmd->cmd_status = 0xFF;
	dcmd->sge_count = 1;
	dcmd->flags = MFI_FRAME_DIR_READ;
	dcmd->timeout = 0;
	dcmd->pad_0 = 0;
	dcmd->data_xfer_len = FUNC0(size_map_info);
	dcmd->opcode = FUNC0(MR_DCMD_LD_MAP_GET_INFO);

	FUNC7(instance, dcmd, ci_h, size_map_info);

	if (!instance->mask_interrupts)
		ret = FUNC4(instance, cmd,
			MFI_IO_TIMEOUT_SECS);
	else
		ret = FUNC5(instance, cmd);

	if (ret == DCMD_TIMEOUT)
		FUNC2(instance);

	FUNC6(instance, cmd);

	return ret;
}