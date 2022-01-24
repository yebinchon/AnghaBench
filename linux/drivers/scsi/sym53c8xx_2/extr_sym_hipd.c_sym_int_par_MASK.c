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
typedef  int u32 ;
struct sym_hcb {int /*<<< orphan*/ * msgout; } ;
struct sym_ccb {int /*<<< orphan*/  xerr_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  HF_EXT_ERR ; 
 int /*<<< orphan*/  HF_PRT ; 
 int /*<<< orphan*/  HS_PRT ; 
 int /*<<< orphan*/  HS_UNEXPECTED ; 
 int FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int ISCON ; 
 int MA ; 
 int /*<<< orphan*/  M_ID_ERROR ; 
 int /*<<< orphan*/  M_PARITY ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sym_hcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XE_PARITY_ERR ; 
 int /*<<< orphan*/  clrack ; 
 int /*<<< orphan*/  dispatch ; 
 int /*<<< orphan*/  nc_dbc ; 
 int /*<<< orphan*/  nc_dsa ; 
 int /*<<< orphan*/  nc_dsp ; 
 int /*<<< orphan*/  nc_sbcl ; 
 int /*<<< orphan*/  nc_scntl1 ; 
 int /*<<< orphan*/  pm_handle ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int,int) ; 
 scalar_t__ FUNC7 () ; 
 struct sym_ccb* FUNC8 (struct sym_hcb*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sym_hcb*) ; 
 char* FUNC10 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC11 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sym_hcb*,struct sym_ccb*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sym_hcb*) ; 

__attribute__((used)) static void FUNC14 (struct sym_hcb *np, u_short sist)
{
	u_char	hsts	= FUNC0(np, HS_PRT);
	u32	dsp	= FUNC1(np, nc_dsp);
	u32	dbc	= FUNC1(np, nc_dbc);
	u32	dsa	= FUNC1(np, nc_dsa);
	u_char	sbcl	= FUNC0(np, nc_sbcl);
	u_char	cmd	= dbc >> 24;
	int phase	= cmd & 7;
	struct sym_ccb *cp	= FUNC8(np, dsa);

	if (FUNC7())
		FUNC6("%s: SCSI parity error detected: SCR1=%d DBC=%x SBCL=%x\n",
			FUNC10(np), hsts, dbc, sbcl);

	/*
	 *  Check that the chip is connected to the SCSI BUS.
	 */
	if (!(FUNC0(np, nc_scntl1) & ISCON)) {
		FUNC11(np, HS_UNEXPECTED);
		return;
	}

	/*
	 *  If the nexus is not clearly identified, reset the bus.
	 *  We will try to do better later.
	 */
	if (!cp)
		goto reset_all;

	/*
	 *  Check instruction was a MOV, direction was INPUT and 
	 *  ATN is asserted.
	 */
	if ((cmd & 0xc0) || !(phase & 1) || !(sbcl & 0x8))
		goto reset_all;

	/*
	 *  Keep track of the parity error.
	 */
	FUNC3(np, HF_PRT, HF_EXT_ERR);
	cp->xerr_status |= XE_PARITY_ERR;

	/*
	 *  Prepare the message to send to the device.
	 */
	np->msgout[0] = (phase == 7) ? M_PARITY : M_ID_ERROR;

	/*
	 *  If the old phase was DATA IN phase, we have to deal with
	 *  the 3 situations described above.
	 *  For other input phases (MSG IN and STATUS), the device 
	 *  must resend the whole thing that failed parity checking 
	 *  or signal error. So, jumping to dispatcher should be OK.
	 */
	if (phase == 1 || phase == 5) {
		/* Phase mismatch handled by SCRIPTS */
		if (dsp == FUNC5(np, pm_handle))
			FUNC2(np, dsp);
		/* Phase mismatch handled by the C code */
		else if (sist & MA)
			FUNC9 (np);
		/* No phase mismatch occurred */
		else {
			FUNC12 (np, cp, dsp);
			FUNC2(np, FUNC4(np, dispatch));
		}
	}
	else if (phase == 7)	/* We definitely cannot handle parity errors */
#if 1				/* in message-in phase due to the relection  */
		goto reset_all; /* path and various message anticipations.   */
#else
		OUTL_DSP(np, SCRIPTA_BA(np, clrack));
#endif
	else
		FUNC2(np, FUNC4(np, dispatch));
	return;

reset_all:
	FUNC13(np);
	return;
}