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
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRSTCNTRL ; 
 int CH1 ; 
 int CLRCH1 ; 
 int CLRSTCNT ; 
 int /*<<< orphan*/  DMACNTRL0 ; 
 int /*<<< orphan*/  DMACNTRL1 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FRERR ; 
 int FWERR ; 
 int RSTFIFO ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int /*<<< orphan*/  SCSISIG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSTAT0 ; 
 int /*<<< orphan*/  SSTAT1 ; 
 int /*<<< orphan*/  SSTAT4 ; 
 int /*<<< orphan*/  SXFRCTL0 ; 
 int /*<<< orphan*/  SXFRCTL1 ; 
 int SYNCERR ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC5(struct Scsi_Host *shpnt)
{
	unsigned long flags;

	/* disable interrupts */
	FUNC2(DMACNTRL0, RSTFIFO);

	FUNC2(SCSISEQ, 0);

	FUNC2(SXFRCTL1, 0);
	FUNC2(SCSISIG, 0);
	FUNC3(0);

	/* clear all interrupt conditions */
	FUNC2(SSTAT0, 0x7f);
	FUNC2(SSTAT1, 0xef);

	FUNC2(SSTAT4, SYNCERR | FWERR | FRERR);

	FUNC2(DMACNTRL0, 0);
	FUNC2(DMACNTRL1, 0);

	FUNC2(BRSTCNTRL, 0xf1);

	/* clear SCSI fifos and transfer count */
	FUNC2(SXFRCTL0, CH1|CLRCH1|CLRSTCNT);
	FUNC2(SXFRCTL0, CH1);

	FUNC0(flags);
	FUNC4(shpnt);
	FUNC1(flags);
}