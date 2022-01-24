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
struct TYPE_3__ {int /*<<< orphan*/  overrun_buf; int /*<<< orphan*/  overrun_dma; } ;
struct TYPE_4__ {TYPE_1__ asc_dvc_var; } ;
struct asc_board {int /*<<< orphan*/  ioremap_addr; TYPE_2__ dvc_var; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct Scsi_Host {scalar_t__ dma_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct asc_board*) ; 
 int /*<<< orphan*/  ASC_OVERRUN_BSIZE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ NO_ISA_DMA ; 
 int /*<<< orphan*/  FUNC2 (struct asc_board*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 struct asc_board* FUNC10 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC11(struct Scsi_Host *shost)
{
	struct asc_board *board = FUNC10(shost);
	FUNC0(1, "begin\n");
	FUNC9(shost);
	FUNC5(board->irq, shost);
#ifdef CONFIG_ISA
	if (shost->dma_channel != NO_ISA_DMA) {
		ASC_DBG(1, "free_dma()\n");
		free_dma(shost->dma_channel);
	}
#endif
	if (FUNC1(board)) {
		FUNC3(board->dev,
					board->dvc_var.asc_dvc_var.overrun_dma,
					ASC_OVERRUN_BSIZE, DMA_FROM_DEVICE);
		FUNC7(board->dvc_var.asc_dvc_var.overrun_buf);
	} else {
		FUNC6(board->ioremap_addr);
		FUNC2(board);
	}
	FUNC8(shost);
	FUNC0(1, "end\n");
	return 0;
}