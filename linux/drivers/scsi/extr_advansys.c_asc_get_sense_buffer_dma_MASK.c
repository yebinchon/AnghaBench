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
struct TYPE_4__ {int /*<<< orphan*/  dma_handle; } ;
struct scsi_cmnd {TYPE_2__ SCp; int /*<<< orphan*/  sense_buffer; TYPE_1__* device; } ;
struct asc_board {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct asc_board* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __le32 FUNC5(struct scsi_cmnd *scp)
{
	struct asc_board *board = FUNC4(scp->device->host);

	scp->SCp.dma_handle = FUNC2(board->dev, scp->sense_buffer,
					     SCSI_SENSE_BUFFERSIZE,
					     DMA_FROM_DEVICE);
	if (FUNC3(board->dev, scp->SCp.dma_handle)) {
		FUNC0(1, "failed to map sense buffer\n");
		return 0;
	}
	return FUNC1(scp->SCp.dma_handle);
}