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
 int S626_CRBMSK_INTCTRL ; 
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
 int FUNC13 (unsigned int) ; 
 int FUNC14 (unsigned int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
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
	/* Preload trigger is passed through. */
	cra = FUNC18(FUNC7(setup));
	/* IndexSrc is passed through. */
	cra |= FUNC16(FUNC5(setup));

	/* Reset any pending CounterA event captures. */
	crb = FUNC20(1) | FUNC21(1);
	/* Clock enable is passed through. */
	crb |= FUNC19(FUNC0(setup));

	/* Force IntSrc to Disabled if disable_int_src is asserted. */
	if (!disable_int_src)
		cra |= FUNC17(FUNC6(setup));

	/* Populate all mode-dependent attributes of CRA & CRB images. */
	clkpol = FUNC2(setup);
	switch (FUNC3(setup)) {
	case S626_ENCMODE_EXTENDER: /* Extender Mode: */
		/* Force to Timer mode (Extender valid only for B counters). */
		/* Fall through to case S626_ENCMODE_TIMER: */
	case S626_ENCMODE_TIMER:	/* Timer Mode: */
		/* CntSrcA<1> selects system clock */
		cntsrc = S626_CNTSRC_SYSCLK;
		/* Count direction (CntSrcA<0>) obtained from ClkPol. */
		cntsrc |= clkpol;
		/* ClkPolA behaves as always-on clock enable. */
		clkpol = 1;
		/* ClkMult must be 1x. */
		clkmult = S626_CLKMULT_1X;
		break;
	default:		/* Counter Mode: */
		/* Select ENC_C and ENC_D as clock/direction inputs. */
		cntsrc = S626_CNTSRC_ENCODER;
		/* Clock polarity is passed through. */
		/* Force multiplier to x1 if not legal, else pass through. */
		clkmult = FUNC1(setup);
		if (clkmult == S626_CLKMULT_SPECIAL)
			clkmult = S626_CLKMULT_1X;
		break;
	}
	cra |= FUNC14(cntsrc) | FUNC13(clkpol) |
	       FUNC12(clkmult);

	/*
	 * Force positive index polarity if IndxSrc is software-driven only,
	 * otherwise pass it through.
	 */
	if (FUNC5(setup) != S626_INDXSRC_SOFT)
		cra |= FUNC15(FUNC4(setup));

	/*
	 * If IntSrc has been forced to Disabled, update the MISC2 interrupt
	 * enable mask to indicate the counter interrupt is disabled.
	 */
	if (disable_int_src)
		devpriv->counter_int_enabs &= ~(FUNC11(chan) |
						FUNC8(chan));

	/*
	 * While retaining CounterB and LatchSrc configurations, program the
	 * new counter operating mode.
	 */
	FUNC22(dev, FUNC9(chan),
			  S626_CRAMSK_INDXSRC_B | S626_CRAMSK_CNTSRC_B, cra);
	FUNC22(dev, FUNC10(chan),
			  ~(S626_CRBMSK_INTCTRL | S626_CRBMSK_CLKENAB_A), crb);
}