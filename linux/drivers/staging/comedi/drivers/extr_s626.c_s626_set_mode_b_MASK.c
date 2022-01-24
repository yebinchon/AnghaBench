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
typedef  int u16 ;
struct s626_private {int counter_int_enabs; } ;
struct comedi_device {struct s626_private* private; } ;

/* Variables and functions */
 unsigned int S626_CLKMULT_1X ; 
 unsigned int S626_CLKMULT_SPECIAL ; 
 unsigned int S626_CNTSRC_ENCODER ; 
 unsigned int S626_CNTSRC_SYSCLK ; 
 int S626_CRAMSK_CNTSRC_B ; 
 int S626_CRAMSK_INDXSRC_B ; 
 int S626_CRBMSK_CLKENAB_A ; 
 int S626_CRBMSK_LATCHSRC ; 
#define  S626_ENCMODE_EXTENDER 129 
#define  S626_ENCMODE_TIMER 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (unsigned int) ; 
 scalar_t__ S626_INDXSRC_SOFT ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int FUNC11 (unsigned int) ; 
 int FUNC12 (unsigned int) ; 
 int FUNC13 (scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (unsigned int) ; 
 int FUNC16 (unsigned int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct comedi_device*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC23(struct comedi_device *dev,
			    unsigned int chan, u16 setup,
			    u16 disable_int_src)
{
	struct s626_private *devpriv = dev->private;
	u16 cra;
	u16 crb;
	unsigned int cntsrc, clkmult, clkpol;

	/* Initialize CRA and CRB images. */
	/* IndexSrc is passed through. */
	cra = FUNC13(FUNC5(setup));

	/* Reset event captures and disable interrupts. */
	crb = FUNC18(1) | FUNC19(1);
	/* Clock enable is passed through. */
	crb |= FUNC14(FUNC0(setup));
	/* Preload trigger source is passed through. */
	crb |= FUNC21(FUNC7(setup));

	/* Force IntSrc to Disabled if disable_int_src is asserted. */
	if (!disable_int_src)
		crb |= FUNC20(FUNC6(setup));

	/* Populate all mode-dependent attributes of CRA & CRB images. */
	clkpol = FUNC2(setup);
	switch (FUNC3(setup)) {
	case S626_ENCMODE_TIMER:	/* Timer Mode: */
		/* CntSrcB<1> selects system clock */
		cntsrc = S626_CNTSRC_SYSCLK;
		/* with direction (CntSrcB<0>) obtained from ClkPol. */
		cntsrc |= clkpol;
		/* ClkPolB behaves as always-on clock enable. */
		clkpol = 1;
		/* ClkMultB must be 1x. */
		clkmult = S626_CLKMULT_1X;
		break;
	case S626_ENCMODE_EXTENDER:	/* Extender Mode: */
		/* CntSrcB source is OverflowA (same as "timer") */
		cntsrc = S626_CNTSRC_SYSCLK;
		/* with direction obtained from ClkPol. */
		cntsrc |= clkpol;
		/* ClkPolB controls IndexB -- always set to active. */
		clkpol = 1;
		/* ClkMultB selects OverflowA as the clock source. */
		clkmult = S626_CLKMULT_SPECIAL;
		break;
	default:		/* Counter Mode: */
		/* Select ENC_C and ENC_D as clock/direction inputs. */
		cntsrc = S626_CNTSRC_ENCODER;
		/* ClkPol is passed through. */
		/* Force ClkMult to x1 if not legal, otherwise pass through. */
		clkmult = FUNC1(setup);
		if (clkmult == S626_CLKMULT_SPECIAL)
			clkmult = S626_CLKMULT_1X;
		break;
	}
	cra |= FUNC12(cntsrc);
	crb |= FUNC16(clkpol) | FUNC15(clkmult);

	/*
	 * Force positive index polarity if IndxSrc is software-driven only,
	 * otherwise pass it through.
	 */
	if (FUNC5(setup) != S626_INDXSRC_SOFT)
		crb |= FUNC17(FUNC4(setup));

	/*
	 * If IntSrc has been forced to Disabled, update the MISC2 interrupt
	 * enable mask to indicate the counter interrupt is disabled.
	 */
	if (disable_int_src)
		devpriv->counter_int_enabs &= ~(FUNC11(chan) |
						FUNC8(chan));

	/*
	 * While retaining CounterA and LatchSrc configurations, program the
	 * new counter operating mode.
	 */
	FUNC22(dev, FUNC9(chan),
			  ~(S626_CRAMSK_INDXSRC_B | S626_CRAMSK_CNTSRC_B), cra);
	FUNC22(dev, FUNC10(chan),
			  S626_CRBMSK_CLKENAB_A | S626_CRBMSK_LATCHSRC, crb);
}