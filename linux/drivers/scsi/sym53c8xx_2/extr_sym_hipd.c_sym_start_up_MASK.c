#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ uval; int /*<<< orphan*/  wval; scalar_t__ sval; } ;
struct sym_tcb {TYPE_3__** lunmp; TYPE_2__* lun0p; TYPE_1__ head; scalar_t__ to_reset; } ;
struct TYPE_8__ {scalar_t__ ramaddr; } ;
struct sym_hcb {int rv_scntl0; int myaddr; int rv_dmode; int rv_ctest5; int rv_dcntl; int rv_ctest3; int rv_ctest4; int features; int rv_stest2; int rv_ccntl0; int rv_ccntl1; int scsi_mode; scalar_t__ hcb_ba; scalar_t__ istat_sem; int /*<<< orphan*/  scr_ram_seg; int /*<<< orphan*/  scriptb_sz; int /*<<< orphan*/  scriptb0; TYPE_4__ s; int /*<<< orphan*/  scripta_sz; int /*<<< orphan*/  scripta0; scalar_t__ ram_ba; int /*<<< orphan*/  rv_scntl3; struct sym_tcb* target; scalar_t__* dmap_bah; int /*<<< orphan*/  (* fw_patch ) (struct Scsi_Host*) ;scalar_t__ dqueueget; void** dqueue; scalar_t__ dqueue_ba; scalar_t__ squeueput; void** squeue; scalar_t__ idletask_ba; scalar_t__ squeue_ba; } ;
struct sym_data {struct sym_hcb* ncb; struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ device; int revision; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {scalar_t__ to_clear; } ;
struct TYPE_6__ {scalar_t__ to_clear; } ;

/* Variables and functions */
 int BF ; 
 int /*<<< orphan*/  CLF ; 
 int CSF ; 
 int /*<<< orphan*/  DID_RESET ; 
 int DISAIP ; 
 int DPR ; 
 int EXT ; 
 int FE_C10 ; 
 int FE_DAC ; 
 int FE_LED0 ; 
 int FE_LEDC ; 
 int FE_NOPM ; 
 int FE_RAM8K ; 
 int FE_ULTRA2 ; 
 int FE_ULTRA3 ; 
 unsigned long HTH ; 
 int IID ; 
 int FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 unsigned long MA ; 
 int MAX_QUEUE ; 
 int MDPE ; 
 int NOCOM ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sym_hcb*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sym_hcb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sym_hcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sym_hcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sym_hcb*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long PAR ; 
 scalar_t__ PCI_DEVICE_ID_LSI_53C1010_33 ; 
 scalar_t__ PCI_DEVICE_ID_LSI_53C1010_66 ; 
 scalar_t__ PCI_DEVICE_ID_NCR_53C875 ; 
 scalar_t__ PCI_DEVICE_ID_NCR_53C896 ; 
 int RRE ; 
 unsigned long RST ; 
 int /*<<< orphan*/  SBMC ; 
 scalar_t__ FUNC8 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 unsigned long SGE ; 
 int SIGP ; 
 int SIR ; 
 int SMODE ; 
 int SSI ; 
 unsigned long STO ; 
 int SYM_CONF_MAX_LUN ; 
 int SYM_CONF_MAX_TARGET ; 
 int TE ; 
 unsigned long UDC ; 
 void* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nc_aipcntl1 ; 
 int /*<<< orphan*/  nc_ccntl0 ; 
 int /*<<< orphan*/  nc_ccntl1 ; 
 int /*<<< orphan*/  nc_ctest0 ; 
 int /*<<< orphan*/  nc_ctest3 ; 
 int /*<<< orphan*/  nc_ctest4 ; 
 int /*<<< orphan*/  nc_ctest5 ; 
 int /*<<< orphan*/  nc_dcntl ; 
 int /*<<< orphan*/  nc_dien ; 
 int /*<<< orphan*/  nc_dmode ; 
 int /*<<< orphan*/  nc_drs ; 
 int /*<<< orphan*/  nc_dsa ; 
 int /*<<< orphan*/  nc_gpcntl ; 
 int /*<<< orphan*/  nc_istat ; 
 int /*<<< orphan*/  nc_mbox1 ; 
 int /*<<< orphan*/  nc_mmrs ; 
 int /*<<< orphan*/  nc_mmws ; 
 int /*<<< orphan*/  nc_pmjad1 ; 
 int /*<<< orphan*/  nc_pmjad2 ; 
 int /*<<< orphan*/  nc_respid ; 
 int /*<<< orphan*/  nc_scid ; 
 int /*<<< orphan*/  nc_scntl0 ; 
 int /*<<< orphan*/  nc_scntl1 ; 
 int /*<<< orphan*/ * nc_scrx ; 
 int /*<<< orphan*/  nc_sfs ; 
 int /*<<< orphan*/  nc_sien ; 
 int /*<<< orphan*/  nc_sist ; 
 int /*<<< orphan*/  nc_stest1 ; 
 int /*<<< orphan*/  nc_stest2 ; 
 int /*<<< orphan*/  nc_stest3 ; 
 int /*<<< orphan*/  nc_stest4 ; 
 int /*<<< orphan*/  nc_stime0 ; 
 int /*<<< orphan*/  pm_handle ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 struct sym_data* FUNC15 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  start64 ; 
 int /*<<< orphan*/  FUNC16 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC17 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 char* FUNC18 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC19 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sym_hcb*) ; 
 int sym_verbose ; 
 int /*<<< orphan*/  FUNC21 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 scalar_t__ FUNC23 (struct sym_hcb*) ; 

void FUNC24(struct Scsi_Host *shost, int reason)
{
	struct sym_data *sym_data = FUNC15(shost);
	struct pci_dev *pdev = sym_data->pdev;
	struct sym_hcb *np = sym_data->ncb;
 	int	i;
	u32	phys;

 	/*
	 *  Reset chip if asked, otherwise just clear fifos.
 	 */
	if (reason == 1)
		FUNC20(np);
	else {
		FUNC2(np, nc_stest3, TE|CSF);
		FUNC5(np, nc_ctest3, CLF);
	}
 
	/*
	 *  Clear Start Queue
	 */
	phys = np->squeue_ba;
	for (i = 0; i < MAX_QUEUE*2; i += 2) {
		np->squeue[i]   = FUNC10(np->idletask_ba);
		np->squeue[i+1] = FUNC10(phys + (i+2)*4);
	}
	np->squeue[MAX_QUEUE*2-1] = FUNC10(phys);

	/*
	 *  Start at first entry.
	 */
	np->squeueput = 0;

	/*
	 *  Clear Done Queue
	 */
	phys = np->dqueue_ba;
	for (i = 0; i < MAX_QUEUE*2; i += 2) {
		np->dqueue[i]   = 0;
		np->dqueue[i+1] = FUNC10(phys + (i+2)*4);
	}
	np->dqueue[MAX_QUEUE*2-1] = FUNC10(phys);

	/*
	 *  Start at first entry.
	 */
	np->dqueueget = 0;

	/*
	 *  Install patches in scripts.
	 *  This also let point to first position the start 
	 *  and done queue pointers used from SCRIPTS.
	 */
	np->fw_patch(shost);

	/*
	 *  Wakeup all pending jobs.
	 */
	FUNC17(np, DID_RESET);

	/*
	 *  Init chip.
	 */
	FUNC2(np, nc_istat,  0x00);			/*  Remove Reset, abort */
	FUNC0(np, nc_mbox1);
	FUNC22(2000); /* The 895 needs time for the bus mode to settle */

	FUNC2(np, nc_scntl0, np->rv_scntl0 | 0xc0);
					/*  full arb., ena parity, par->ATN  */
	FUNC2(np, nc_scntl1, 0x00);		/*  odd parity, and remove CRST!! */

	FUNC19(np, np->rv_scntl3);	/* Select SCSI clock */

	FUNC2(np, nc_scid  , RRE|np->myaddr);	/* Adapter SCSI address */
	FUNC7(np, nc_respid, 1ul<<np->myaddr);	/* Id to respond to */
	FUNC2(np, nc_istat , SIGP	);		/*  Signal Process */
	FUNC2(np, nc_dmode , np->rv_dmode);		/* Burst length, dma mode */
	FUNC2(np, nc_ctest5, np->rv_ctest5);	/* Large fifo + large burst */

	FUNC2(np, nc_dcntl , NOCOM|np->rv_dcntl);	/* Protect SFBR */
	FUNC2(np, nc_ctest3, np->rv_ctest3);	/* Write and invalidate */
	FUNC2(np, nc_ctest4, np->rv_ctest4);	/* Master parity checking */

	/* Extended Sreq/Sack filtering not supported on the C10 */
	if (np->features & FE_C10)
		FUNC2(np, nc_stest2, np->rv_stest2);
	else
		FUNC2(np, nc_stest2, EXT|np->rv_stest2);

	FUNC2(np, nc_stest3, TE);			/* TolerANT enable */
	FUNC2(np, nc_stime0, 0x0c);			/* HTH disabled  STO 0.25 sec */

	/*
	 *  For now, disable AIP generation on C1010-66.
	 */
	if (pdev->device == PCI_DEVICE_ID_LSI_53C1010_66)
		FUNC2(np, nc_aipcntl1, DISAIP);

	/*
	 *  C10101 rev. 0 errata.
	 *  Errant SGE's when in narrow. Write bits 4 & 5 of
	 *  STEST1 register to disable SGE. We probably should do 
	 *  that from SCRIPTS for each selection/reselection, but 
	 *  I just don't want. :)
	 */
	if (pdev->device == PCI_DEVICE_ID_LSI_53C1010_33 &&
	    pdev->revision < 1)
		FUNC2(np, nc_stest1, FUNC0(np, nc_stest1) | 0x30);

	/*
	 *  DEL 441 - 53C876 Rev 5 - Part Number 609-0392787/2788 - ITEM 2.
	 *  Disable overlapped arbitration for some dual function devices, 
	 *  regardless revision id (kind of post-chip-design feature. ;-))
	 */
	if (pdev->device == PCI_DEVICE_ID_NCR_53C875)
		FUNC2(np, nc_ctest0, (1<<5));
	else if (pdev->device == PCI_DEVICE_ID_NCR_53C896)
		np->rv_ccntl0 |= DPR;

	/*
	 *  Write CCNTL0/CCNTL1 for chips capable of 64 bit addressing 
	 *  and/or hardware phase mismatch, since only such chips 
	 *  seem to support those IO registers.
	 */
	if (np->features & (FE_DAC|FE_NOPM)) {
		FUNC2(np, nc_ccntl0, np->rv_ccntl0);
		FUNC2(np, nc_ccntl1, np->rv_ccntl1);
	}

#if	SYM_CONF_DMA_ADDRESSING_MODE == 2
	/*
	 *  Set up scratch C and DRS IO registers to map the 32 bit 
	 *  DMA address range our data structures are located in.
	 */
	if (use_dac(np)) {
		np->dmap_bah[0] = 0;	/* ??? */
		OUTL(np, nc_scrx[0], np->dmap_bah[0]);
		OUTL(np, nc_drs, np->dmap_bah[0]);
	}
#endif

	/*
	 *  If phase mismatch handled by scripts (895A/896/1010),
	 *  set PM jump addresses.
	 */
	if (np->features & FE_NOPM) {
		FUNC3(np, nc_pmjad1, FUNC9(np, pm_handle));
		FUNC3(np, nc_pmjad2, FUNC9(np, pm_handle));
	}

	/*
	 *    Enable GPIO0 pin for writing if LED support from SCRIPTS.
	 *    Also set GPIO5 and clear GPIO6 if hardware LED control.
	 */
	if (np->features & FE_LED0)
		FUNC2(np, nc_gpcntl, FUNC0(np, nc_gpcntl) & ~0x01);
	else if (np->features & FE_LEDC)
		FUNC2(np, nc_gpcntl, (FUNC0(np, nc_gpcntl) & ~0x41) | 0x20);

	/*
	 *      enable ints
	 */
	FUNC7(np, nc_sien , STO|HTH|MA|SGE|UDC|RST|PAR);
	FUNC2(np, nc_dien , MDPE|BF|SSI|SIR|IID);

	/*
	 *  For 895/6 enable SBMC interrupt and save current SCSI bus mode.
	 *  Try to eat the spurious SBMC interrupt that may occur when 
	 *  we reset the chip but not the SCSI BUS (at initialization).
	 */
	if (np->features & (FE_ULTRA2|FE_ULTRA3)) {
		FUNC6(np, nc_sien, SBMC);
		if (reason == 0) {
			FUNC0(np, nc_mbox1);
			FUNC11(100);
			FUNC1(np, nc_sist);
		}
		np->scsi_mode = FUNC0(np, nc_stest4) & SMODE;
	}

	/*
	 *  Fill in target structure.
	 *  Reinitialize usrsync.
	 *  Reinitialize usrwide.
	 *  Prepare sync negotiation according to actual SCSI bus mode.
	 */
	for (i=0;i<SYM_CONF_MAX_TARGET;i++) {
		struct sym_tcb *tp = &np->target[i];

		tp->to_reset  = 0;
		tp->head.sval = 0;
		tp->head.wval = np->rv_scntl3;
		tp->head.uval = 0;
		if (tp->lun0p)
			tp->lun0p->to_clear = 0;
		if (tp->lunmp) {
			int ln;

			for (ln = 1; ln < SYM_CONF_MAX_LUN; ln++)
				if (tp->lunmp[ln])
					tp->lunmp[ln]->to_clear = 0;
		}
	}

	/*
	 *  Download SCSI SCRIPTS to on-chip RAM if present,
	 *  and start script processor.
	 *  We do the download preferently from the CPU.
	 *  For platforms that may not support PCI memory mapping,
	 *  we use simple SCRIPTS that performs MEMORY MOVEs.
	 */
	phys = FUNC8(np, init);
	if (np->ram_ba) {
		if (sym_verbose >= 2)
			FUNC13("%s: Downloading SCSI SCRIPTS.\n", FUNC18(np));
		FUNC12(np->s.ramaddr, np->scripta0, np->scripta_sz);
		if (np->features & FE_RAM8K) {
			FUNC12(np->s.ramaddr + 4096, np->scriptb0, np->scriptb_sz);
			phys = FUNC14(np->scr_ram_seg);
			FUNC3(np, nc_mmws, phys);
			FUNC3(np, nc_mmrs, phys);
			FUNC3(np, nc_sfs,  phys);
			phys = FUNC9(np, start64);
		}
	}

	np->istat_sem = 0;

	FUNC3(np, nc_dsa, np->hcb_ba);
	FUNC4(np, phys);

	/*
	 *  Notify the XPT about the RESET condition.
	 */
	if (reason != 0)
		FUNC21(np);
}