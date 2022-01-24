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
struct scb {TYPE_1__* hscb; } ;
struct ahc_softc {scalar_t__* qinfifo; int features; int /*<<< orphan*/  qinfifonext; } ;
struct TYPE_2__ {scalar_t__ tag; scalar_t__ next; int /*<<< orphan*/  lun; } ;

/* Variables and functions */
 int AHC_AUTOPAUSE ; 
 int AHC_QUEUE_REGS ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  HNSCB_QOFF ; 
 int /*<<< orphan*/  KERNEL_QINPOS ; 
 int /*<<< orphan*/  LID ; 
 scalar_t__ SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_XFERLEN_ODD ; 
 int FUNC0 (struct scb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,struct scb*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,scalar_t__) ; 

void
FUNC7(struct ahc_softc *ahc, struct scb *scb)
{
	FUNC3(ahc, scb);

	if (scb->hscb->tag == SCB_LIST_NULL
	 || scb->hscb->next == SCB_LIST_NULL)
		FUNC6("Attempt to queue invalid SCB tag %x:%x\n",
		      scb->hscb->tag, scb->hscb->next);

	/*
	 * Setup data "oddness".
	 */
	scb->hscb->lun &= LID;
	if (FUNC0(scb) & 0x1)
		scb->hscb->lun |= SCB_XFERLEN_ODD;

	/*
	 * Keep a history of SCBs we've downloaded in the qinfifo.
	 */
	ahc->qinfifo[ahc->qinfifonext++] = scb->hscb->tag;

	/*
	 * Make sure our data is consistent from the
	 * perspective of the adapter.
	 */
	FUNC4(ahc, scb, BUS_DMASYNC_PREREAD|BUS_DMASYNC_PREWRITE);

	/* Tell the adapter about the newly queued SCB */
	if ((ahc->features & AHC_QUEUE_REGS) != 0) {
		FUNC1(ahc, HNSCB_QOFF, ahc->qinfifonext);
	} else {
		if ((ahc->features & AHC_AUTOPAUSE) == 0)
			FUNC2(ahc);
		FUNC1(ahc, KERNEL_QINPOS, ahc->qinfifonext);
		if ((ahc->features & AHC_AUTOPAUSE) == 0)
			FUNC5(ahc);
	}
}