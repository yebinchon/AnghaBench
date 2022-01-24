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
struct TYPE_4__ {int this_residual; int /*<<< orphan*/  ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; TYPE_2__* device; } ;
struct WD33C93_hostdata {int dma_dir; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int dma_bcr; unsigned long dma_dadr; unsigned char dma_cntrl; } ;
struct TYPE_5__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 TYPE_3__* m147_pcc ; 
 struct WD33C93_hostdata* FUNC2 (struct Scsi_Host*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct scsi_cmnd *cmd, int dir_in)
{
	struct Scsi_Host *instance = cmd->device->host;
	struct WD33C93_hostdata *hdata = FUNC2(instance);
	unsigned char flags = 0x01;
	unsigned long addr = FUNC3(cmd->SCp.ptr);

	/* setup dma direction */
	if (!dir_in)
		flags |= 0x04;

	/* remember direction */
	hdata->dma_dir = dir_in;

	if (dir_in) {
		/* invalidate any cache */
		FUNC0(addr, cmd->SCp.this_residual);
	} else {
		/* push any dirty cache */
		FUNC1(addr, cmd->SCp.this_residual);
	}

	/* start DMA */
	m147_pcc->dma_bcr = cmd->SCp.this_residual | (1 << 24);
	m147_pcc->dma_dadr = addr;
	m147_pcc->dma_cntrl = flags;

	/* return success */
	return 0;
}