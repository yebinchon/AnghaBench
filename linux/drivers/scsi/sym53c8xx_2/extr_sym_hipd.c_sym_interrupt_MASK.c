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
typedef  int u_short ;
typedef  int u_char ;
struct sym_hcb {int istat_sem; int rv_ctest3; } ;
struct sym_data {struct pci_dev* pdev; struct sym_hcb* ncb; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ABRT ; 
 int BF ; 
 int CABRT ; 
 int CLF ; 
 int CSF ; 
 int DEBUG_FLAGS ; 
 int DEBUG_TINY ; 
 int DIP ; 
 int GEN ; 
 int HTH ; 
 int IID ; 
 int FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int INTF ; 
 int FUNC2 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MA ; 
 int MDPE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sym_hcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int PAR ; 
 int RST ; 
 int SBMC ; 
 int SGE ; 
 int SIGP ; 
 int SIP ; 
 int SIR ; 
 int SSI ; 
 int STO ; 
 int TE ; 
 int UDC ; 
 int /*<<< orphan*/  nc_ctest3 ; 
 int /*<<< orphan*/  nc_dbc ; 
 int /*<<< orphan*/  nc_dsp ; 
 int /*<<< orphan*/  nc_dstat ; 
 int /*<<< orphan*/  nc_istat ; 
 int /*<<< orphan*/  nc_scr0 ; 
 int /*<<< orphan*/  nc_sist ; 
 int /*<<< orphan*/  nc_stest3 ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 struct sym_data* FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC10 (struct sym_hcb*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC12 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC13 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC14 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC15 (struct Scsi_Host*,int,int) ; 
 char* FUNC16 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC17 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC18 (struct Scsi_Host*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sym_hcb*) ; 
 scalar_t__ FUNC20 (int) ; 

irqreturn_t FUNC21(struct Scsi_Host *shost)
{
	struct sym_data *sym_data = FUNC8(shost);
	struct sym_hcb *np = sym_data->ncb;
	struct pci_dev *pdev = sym_data->pdev;
	u_char	istat, istatc;
	u_char	dstat;
	u_short	sist;

	/*
	 *  interrupt on the fly ?
	 *  (SCRIPTS may still be running)
	 *
	 *  A `dummy read' is needed to ensure that the 
	 *  clear of the INTF flag reaches the device 
	 *  and that posted writes are flushed to memory
	 *  before the scanning of the DONE queue.
	 *  Note that SCRIPTS also (dummy) read to memory 
	 *  prior to deliver the INTF interrupt condition.
	 */
	istat = FUNC0(np, nc_istat);
	if (istat & INTF) {
		FUNC4(np, nc_istat, (istat & SIGP) | INTF | np->istat_sem);
		istat |= FUNC0(np, nc_istat);		/* DUMMY READ */
		if (DEBUG_FLAGS & DEBUG_TINY) FUNC7 ("F ");
		FUNC19(np);
	}

	if (!(istat & (SIP|DIP)))
		return (istat & INTF) ? IRQ_HANDLED : IRQ_NONE;

#if 0	/* We should never get this one */
	if (istat & CABRT)
		OUTB(np, nc_istat, CABRT);
#endif

	/*
	 *  PAR and MA interrupts may occur at the same time,
	 *  and we need to know of both in order to handle 
	 *  this situation properly. We try to unstack SCSI 
	 *  interrupts for that reason. BTW, I dislike a LOT 
	 *  such a loop inside the interrupt routine.
	 *  Even if DMA interrupt stacking is very unlikely to 
	 *  happen, we also try unstacking these ones, since 
	 *  this has no performance impact.
	 */
	sist	= 0;
	dstat	= 0;
	istatc	= istat;
	do {
		if (istatc & SIP)
			sist  |= FUNC2(np, nc_sist);
		if (istatc & DIP)
			dstat |= FUNC0(np, nc_dstat);
		istatc = FUNC0(np, nc_istat);
		istat |= istatc;

		/* Prevent deadlock waiting on a condition that may
		 * never clear. */
		if (FUNC20(sist == 0xffff && dstat == 0xff)) {
			if (FUNC6(pdev))
				return IRQ_NONE;
		}
	} while (istatc & (SIP|DIP));

	if (DEBUG_FLAGS & DEBUG_TINY)
		FUNC7 ("<%d|%x:%x|%x:%x>",
			(int)FUNC0(np, nc_scr0),
			dstat,sist,
			(unsigned)FUNC1(np, nc_dsp),
			(unsigned)FUNC1(np, nc_dbc));
	/*
	 *  On paper, a memory read barrier may be needed here to 
	 *  prevent out of order LOADs by the CPU from having 
	 *  prefetched stale data prior to DMA having occurred.
	 *  And since we are paranoid ... :)
	 */
	FUNC3();

	/*
	 *  First, interrupts we want to service cleanly.
	 *
	 *  Phase mismatch (MA) is the most frequent interrupt 
	 *  for chip earlier than the 896 and so we have to service 
	 *  it as quickly as possible.
	 *  A SCSI parity error (PAR) may be combined with a phase 
	 *  mismatch condition (MA).
	 *  Programmed interrupts (SIR) are used to call the C code 
	 *  from SCRIPTS.
	 *  The single step interrupt (SSI) is not used in this 
	 *  driver.
	 */
	if (!(sist  & (STO|GEN|HTH|SGE|UDC|SBMC|RST)) &&
	    !(dstat & (MDPE|BF|ABRT|IID))) {
		if	(sist & PAR)	FUNC10 (np, sist);
		else if (sist & MA)	FUNC9 (np);
		else if (dstat & SIR)	FUNC12(np);
		else if (dstat & SSI)	FUNC5();
		else			goto unknown_int;
		return IRQ_HANDLED;
	}

	/*
	 *  Now, interrupts that donnot happen in normal 
	 *  situations and that we may need to recover from.
	 *
	 *  On SCSI RESET (RST), we reset everything.
	 *  On SCSI BUS MODE CHANGE (SBMC), we complete all 
	 *  active CCBs with RESET status, prepare all devices 
	 *  for negotiating again and restart the SCRIPTS.
	 *  On STO and UDC, we complete the CCB with the corres- 
	 *  ponding status and restart the SCRIPTS.
	 */
	if (sist & RST) {
		FUNC7("%s: SCSI BUS reset detected.\n", FUNC16(np));
		FUNC18(shost, 1);
		return IRQ_HANDLED;
	}

	FUNC4(np, nc_ctest3, np->rv_ctest3 | CLF);	/* clear dma fifo  */
	FUNC4(np, nc_stest3, TE|CSF);		/* clear scsi fifo */

	if (!(sist  & (GEN|HTH|SGE)) &&
	    !(dstat & (MDPE|BF|ABRT|IID))) {
		if	(sist & SBMC)	FUNC11(shost);
		else if (sist & STO)	FUNC13 (np);
		else if (sist & UDC)	FUNC14 (np);
		else			goto unknown_int;
		return IRQ_HANDLED;
	}

	/*
	 *  Now, interrupts we are not able to recover cleanly.
	 *
	 *  Log message for hard errors.
	 *  Reset everything.
	 */

	FUNC15(shost, sist, dstat);

	if ((sist & (GEN|HTH|SGE)) ||
		(dstat & (MDPE|BF|ABRT|IID))) {
		FUNC17(np);
		return IRQ_HANDLED;
	}

unknown_int:
	/*
	 *  We just miss the cause of the interrupt. :(
	 *  Print a message. The timeout will do the real work.
	 */
	FUNC7(	"%s: unknown interrupt(s) ignored, "
		"ISTAT=0x%x DSTAT=0x%x SIST=0x%x\n",
		FUNC16(np), istat, dstat, sist);
	return IRQ_NONE;
}