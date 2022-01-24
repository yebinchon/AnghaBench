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
typedef  int u8 ;
typedef  int u16 ;
struct AdapterCtlBlk {int sel_timeout; int config; TYPE_1__* scsi_host; } ;
struct TYPE_2__ {int this_id; } ;

/* Variables and functions */
 int BLOCKRST ; 
 int FUNC0 (struct AdapterCtlBlk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterCtlBlk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int) ; 
 int DMA_ENHANCE ; 
 int DMA_FIFO_CTRL ; 
 int DMA_FIFO_HALF_HALF ; 
 int EN_DMAXFERERROR ; 
 int EN_SCSIINTR ; 
 int HCC_PARITY ; 
 int INITIATOR ; 
 int PARITYCHECK ; 
 int PHASELATCH ; 
 int /*<<< orphan*/  TRM_S1040_DMA_CONFIG ; 
 int /*<<< orphan*/  TRM_S1040_DMA_INTEN ; 
 int /*<<< orphan*/  TRM_S1040_GEN_CONTROL ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_CONFIG0 ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_CONFIG1 ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_HOSTID ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_INTEN ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_INTSTATUS ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_OFFSET ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_TIMEOUT ; 

__attribute__((used)) static void FUNC4(struct AdapterCtlBlk *acb)
{
	u8 bval;
	u16 wval;
	FUNC3(acb, TRM_S1040_SCSI_TIMEOUT, acb->sel_timeout);
	if (acb->config & HCC_PARITY)
		bval = PHASELATCH | INITIATOR | BLOCKRST | PARITYCHECK;
	else
		bval = PHASELATCH | INITIATOR | BLOCKRST;

	FUNC3(acb, TRM_S1040_SCSI_CONFIG0, bval);

	/* program configuration 1: Act_Neg (+ Act_Neg_Enh? + Fast_Filter? + DataDis?) */
	FUNC3(acb, TRM_S1040_SCSI_CONFIG1, 0x03);	/* was 0x13: default */
	/* program Host ID                  */
	FUNC3(acb, TRM_S1040_SCSI_HOSTID, acb->scsi_host->this_id);
	/* set ansynchronous transfer       */
	FUNC3(acb, TRM_S1040_SCSI_OFFSET, 0x00);
	/* Turn LED control off */
	wval = FUNC0(acb, TRM_S1040_GEN_CONTROL) & 0x7F;
	FUNC2(acb, TRM_S1040_GEN_CONTROL, wval);
	/* DMA config          */
	wval = FUNC0(acb, TRM_S1040_DMA_CONFIG) & ~DMA_FIFO_CTRL;
	wval |=
	    DMA_FIFO_HALF_HALF | DMA_ENHANCE /*| DMA_MEM_MULTI_READ */ ;
	FUNC2(acb, TRM_S1040_DMA_CONFIG, wval);
	/* Clear pending interrupt status */
	FUNC1(acb, TRM_S1040_SCSI_INTSTATUS);
	/* Enable SCSI interrupt    */
	FUNC3(acb, TRM_S1040_SCSI_INTEN, 0x7F);
	FUNC3(acb, TRM_S1040_DMA_INTEN, EN_SCSIINTR | EN_DMAXFERERROR
		      /*| EN_DMAXFERABORT | EN_DMAXFERCOMP | EN_FORCEDMACOMP */
		      );
}