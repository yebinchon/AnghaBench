#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct megasas_instance {int max_mfi_cmds; scalar_t__ adapter_type; int mfi_frame_size; TYPE_1__* pdev; void* sense_dma_pool; int /*<<< orphan*/ * frame_dma_pool; struct megasas_cmd** cmd_list; } ;
struct megasas_cmd {TYPE_4__* frame; int /*<<< orphan*/  index; int /*<<< orphan*/  sense; int /*<<< orphan*/  sense_phys_addr; int /*<<< orphan*/  frame_phys_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_6__ {scalar_t__ pad_0; int /*<<< orphan*/  context; } ;
struct TYPE_8__ {TYPE_3__ hdr; TYPE_2__ io; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int MEGAMFI_FRAME_SIZE ; 
 int /*<<< orphan*/  MFI_CMD_INVALID ; 
 scalar_t__ MFI_SERIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct megasas_instance*) ; 
 scalar_t__ reset_devices ; 

__attribute__((used)) static int FUNC7(struct megasas_instance *instance)
{
	int i;
	u16 max_cmd;
	u32 frame_count;
	struct megasas_cmd *cmd;

	max_cmd = instance->max_mfi_cmds;

	/*
	 * For MFI controllers.
	 * max_num_sge = 60
	 * max_sge_sz  = 16 byte (sizeof megasas_sge_skinny)
	 * Total 960 byte (15 MFI frame of 64 byte)
	 *
	 * Fusion adapter require only 3 extra frame.
	 * max_num_sge = 16 (defined as MAX_IOCTL_SGE)
	 * max_sge_sz  = 12 byte (sizeof  megasas_sge64)
	 * Total 192 byte (3 MFI frame of 64 byte)
	 */
	frame_count = (instance->adapter_type == MFI_SERIES) ?
			(15 + 1) : (3 + 1);
	instance->mfi_frame_size = MEGAMFI_FRAME_SIZE * frame_count;
	/*
	 * Use DMA pool facility provided by PCI layer
	 */
	instance->frame_dma_pool = FUNC3("megasas frame pool",
					&instance->pdev->dev,
					instance->mfi_frame_size, 256, 0);

	if (!instance->frame_dma_pool) {
		FUNC1(KERN_DEBUG, &instance->pdev->dev, "failed to setup frame pool\n");
		return -ENOMEM;
	}

	instance->sense_dma_pool = FUNC3("megasas sense pool",
						   &instance->pdev->dev, 128,
						   4, 0);

	if (!instance->sense_dma_pool) {
		FUNC1(KERN_DEBUG, &instance->pdev->dev, "failed to setup sense pool\n");

		FUNC4(instance->frame_dma_pool);
		instance->frame_dma_pool = NULL;

		return -ENOMEM;
	}

	/*
	 * Allocate and attach a frame to each of the commands in cmd_list.
	 * By making cmd->index as the context instead of the &cmd, we can
	 * always use 32bit context regardless of the architecture
	 */
	for (i = 0; i < max_cmd; i++) {

		cmd = instance->cmd_list[i];

		cmd->frame = FUNC5(instance->frame_dma_pool,
					    GFP_KERNEL, &cmd->frame_phys_addr);

		cmd->sense = FUNC2(instance->sense_dma_pool,
					    GFP_KERNEL, &cmd->sense_phys_addr);

		/*
		 * megasas_teardown_frame_pool() takes care of freeing
		 * whatever has been allocated
		 */
		if (!cmd->frame || !cmd->sense) {
			FUNC1(KERN_DEBUG, &instance->pdev->dev, "dma_pool_alloc failed\n");
			FUNC6(instance);
			return -ENOMEM;
		}

		cmd->frame->io.context = FUNC0(cmd->index);
		cmd->frame->io.pad_0 = 0;
		if ((instance->adapter_type == MFI_SERIES) && reset_devices)
			cmd->frame->hdr.cmd = MFI_CMD_INVALID;
	}

	return 0;
}