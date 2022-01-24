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
struct wd719x_scb {int /*<<< orphan*/  phys; int /*<<< orphan*/  list; struct scsi_cmnd* cmd; } ;
struct wd719x {TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_handle; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__ SCp; TYPE_3__* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  host; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 struct wd719x* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC5(struct wd719x_scb *scb, int result)
{
	struct scsi_cmnd *cmd = scb->cmd;
	struct wd719x *wd = FUNC3(cmd->device->host);

	FUNC1(&scb->list);

	FUNC0(&wd->pdev->dev, scb->phys,
			sizeof(struct wd719x_scb), DMA_BIDIRECTIONAL);
	FUNC2(cmd);
	FUNC0(&wd->pdev->dev, cmd->SCp.dma_handle,
			 SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);

	cmd->result = result << 16;
	cmd->scsi_done(cmd);
}