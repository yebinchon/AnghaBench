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
struct scsi_cmnd {TYPE_2__* device; } ;
struct device {int dummy; } ;
struct chain {int dummy; } ;
struct aha1542_cmd {int /*<<< orphan*/ * chain; int /*<<< orphan*/  chain_handle; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {struct device* dma_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct aha1542_cmd* FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC5(struct scsi_cmnd *cmd)
{
	struct aha1542_cmd *acmd = FUNC2(cmd);
	struct device *dev = cmd->device->host->dma_dev;
	size_t len = FUNC4(cmd) * sizeof(struct chain);

	if (acmd->chain) {
		FUNC0(dev, acmd->chain_handle, len, DMA_TO_DEVICE);
		FUNC1(acmd->chain);
	}

	acmd->chain = NULL;
	FUNC3(cmd);
}