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
struct TYPE_2__ {int delay_time; } ;
struct AdapterCtlBlk {int acb_flag; int /*<<< orphan*/ * active_dcb; TYPE_1__ eeprom; scalar_t__ last_reset; int /*<<< orphan*/  waiting_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DID_RESET ; 
 int /*<<< orphan*/  DMARESETMODULE ; 
 int /*<<< orphan*/  DO_RSTMODULE ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int RESET_DETECT ; 
 int RESET_DEV ; 
 int RESET_DONE ; 
 int /*<<< orphan*/  TRM_S1040_DMA_CONTROL ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterCtlBlk*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct AdapterCtlBlk*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC6 (struct AdapterCtlBlk*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct AdapterCtlBlk*) ; 

__attribute__((used)) static void FUNC10(struct AdapterCtlBlk *acb)
{
	FUNC4(KERN_INFO, "scsi_reset_detect: acb=%p\n", acb);
	/* delay half a second */
	if (FUNC7(&acb->waiting_timer))
		FUNC2(&acb->waiting_timer);

	FUNC0(acb, TRM_S1040_SCSI_CONTROL, DO_RSTMODULE);
	FUNC0(acb, TRM_S1040_DMA_CONTROL, DMARESETMODULE);
	/*DC395x_write8(acb, TRM_S1040_DMA_CONTROL,STOPDMAXFER); */
	FUNC8(500);
	/* Maybe we locked up the bus? Then lets wait even longer ... */
	acb->last_reset =
	    jiffies + 5 * HZ / 2 +
	    HZ * acb->eeprom.delay_time;

	FUNC1(acb, "scsi_reset_detect");
	FUNC6(acb);
	/*1.25 */
	/*DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_HWRESELECT); */

	if (acb->acb_flag & RESET_DEV) {	/* RESET_DETECT, RESET_DONE, RESET_DEV */
		acb->acb_flag |= RESET_DONE;
	} else {
		acb->acb_flag |= RESET_DETECT;
		FUNC5(acb);
		FUNC3(acb, DID_RESET, NULL, 1);
		/*DC395x_RecoverSRB( acb ); */
		acb->active_dcb = NULL;
		acb->acb_flag = 0;
		FUNC9(acb);
	}
}