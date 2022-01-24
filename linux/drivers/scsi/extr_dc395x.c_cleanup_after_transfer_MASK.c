#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ScsiReqBlk {int dummy; } ;
struct AdapterCtlBlk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLRXFIFO ; 
 int FUNC0 (struct AdapterCtlBlk*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct AdapterCtlBlk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DO_DATALATCH ; 
 int /*<<< orphan*/  TRM_S1040_DMA_COMMAND ; 
 int /*<<< orphan*/  TRM_S1040_DMA_CONTROL ; 
 int /*<<< orphan*/  TRM_S1040_DMA_FIFOSTAT ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_FIFOCNT ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterCtlBlk*,char*) ; 

__attribute__((used)) static void FUNC5(struct AdapterCtlBlk *acb,
		struct ScsiReqBlk *srb)
{
	/*DC395x_write8 (TRM_S1040_DMA_STATUS, FORCEDMACOMP); */
	if (FUNC0(acb, TRM_S1040_DMA_COMMAND) & 0x0001) {	/* read */
		if (!(FUNC1(acb, TRM_S1040_SCSI_FIFOCNT) & 0x40))
			FUNC4(acb, "cleanup/in");
		if (!(FUNC1(acb, TRM_S1040_DMA_FIFOSTAT) & 0x80))
			FUNC3(acb, TRM_S1040_DMA_CONTROL, CLRXFIFO);
	} else {		/* write */
		if (!(FUNC1(acb, TRM_S1040_DMA_FIFOSTAT) & 0x80))
			FUNC3(acb, TRM_S1040_DMA_CONTROL, CLRXFIFO);
		if (!(FUNC1(acb, TRM_S1040_SCSI_FIFOCNT) & 0x40))
			FUNC4(acb, "cleanup/out");
	}
	FUNC2(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);
}