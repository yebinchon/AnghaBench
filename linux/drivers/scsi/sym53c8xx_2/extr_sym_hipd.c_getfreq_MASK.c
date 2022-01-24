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
struct sym_hcb {int features; } ;

/* Variables and functions */
 int FE_C10 ; 
 int GEN ; 
 int FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*,int /*<<< orphan*/ ,int) ; 
 int SIRQD ; 
 int /*<<< orphan*/  nc_dien ; 
 int /*<<< orphan*/  nc_istat1 ; 
 int /*<<< orphan*/  nc_scntl3 ; 
 int /*<<< orphan*/  nc_sien ; 
 int /*<<< orphan*/  nc_sist ; 
 int /*<<< orphan*/  nc_stime1 ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,unsigned int,unsigned int) ; 
 char* FUNC4 (struct sym_hcb*) ; 
 int sym_verbose ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static unsigned FUNC6 (struct sym_hcb *np, int gen)
{
	unsigned int ms = 0;
	unsigned int f;

	/*
	 * Measure GEN timer delay in order 
	 * to calculate SCSI clock frequency
	 *
	 * This code will never execute too
	 * many loop iterations (if DELAY is 
	 * reasonably correct). It could get
	 * too low a delay (too high a freq.)
	 * if the CPU is slow executing the 
	 * loop for some reason (an NMI, for
	 * example). For this reason we will
	 * if multiple measurements are to be 
	 * performed trust the higher delay 
	 * (lower frequency returned).
	 */
	FUNC2(np, nc_sien, 0);	/* mask all scsi interrupts */
	FUNC0(np, nc_sist);	/* clear pending scsi interrupt */
	FUNC1(np, nc_dien, 0);	/* mask all dma interrupts */
	FUNC0(np, nc_sist);	/* another one, just to be sure :) */
	/*
	 * The C1010-33 core does not report GEN in SIST,
	 * if this interrupt is masked in SIEN.
	 * I don't know yet if the C1010-66 behaves the same way.
	 */
	if (np->features & FE_C10) {
		FUNC2(np, nc_sien, GEN);
		FUNC1(np, nc_istat1, SIRQD);
	}
	FUNC1(np, nc_scntl3, 4);	   /* set pre-scaler to divide by 3 */
	FUNC1(np, nc_stime1, 0);	   /* disable general purpose timer */
	FUNC1(np, nc_stime1, gen);  /* set to nominal delay of 1<<gen * 125us */
	while (!(FUNC0(np, nc_sist) & GEN) && ms++ < 100000)
		FUNC5(1000/4);    /* count in 1/4 of ms */
	FUNC1(np, nc_stime1, 0);    /* disable general purpose timer */
	/*
	 * Undo C1010-33 specific settings.
	 */
	if (np->features & FE_C10) {
		FUNC2(np, nc_sien, 0);
		FUNC1(np, nc_istat1, 0);
	}
 	/*
 	 * set prescaler to divide by whatever 0 means
 	 * 0 ought to choose divide by 2, but appears
 	 * to set divide by 3.5 mode in my 53c810 ...
 	 */
 	FUNC1(np, nc_scntl3, 0);

  	/*
 	 * adjust for prescaler, and convert into KHz 
  	 */
	f = ms ? ((1 << gen) * (4340*4)) / ms : 0;

	/*
	 * The C1010-33 result is biased by a factor 
	 * of 2/3 compared to earlier chips.
	 */
	if (np->features & FE_C10)
		f = (f * 2) / 3;

	if (sym_verbose >= 2)
		FUNC3 ("%s: Delay (GEN=%d): %u msec, %u KHz\n",
			FUNC4(np), gen, ms/4, f);

	return f;
}