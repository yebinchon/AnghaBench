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
typedef  enum avmcardtype { ____Placeholder_avmcardtype } avmcardtype ;

/* Variables and functions */
 scalar_t__ B1_INSTAT ; 
 scalar_t__ B1_OUTSTAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int avm_m1 ; 
 int FUNC1 (unsigned int,int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__,int) ; 
 int FUNC5 (scalar_t__) ; 

int FUNC6(unsigned int base, enum avmcardtype cardtype)
{
	int onoff, i;

	/*
	 * Statusregister 0000 00xx
	 */
	if ((FUNC5(base + B1_INSTAT) & 0xfc)
	    || (FUNC5(base + B1_OUTSTAT) & 0xfc))
		return 1;
	/*
	 * Statusregister 0000 001x
	 */
	FUNC4(base, B1_INSTAT, 0x2);	/* enable irq */
	/* b1outp(base, B1_OUTSTAT, 0x2); */
	if ((FUNC5(base + B1_INSTAT) & 0xfe) != 0x2
	    /* || (inb(base + B1_OUTSTAT) & 0xfe) != 0x2 */)
		return 2;
	/*
	 * Statusregister 0000 000x
	 */
	FUNC4(base, B1_INSTAT, 0x0);	/* disable irq */
	FUNC4(base, B1_OUTSTAT, 0x0);
	if ((FUNC5(base + B1_INSTAT) & 0xfe)
	    || (FUNC5(base + B1_OUTSTAT) & 0xfe))
		return 3;

	for (onoff = !0, i = 0; i < 10; i++) {
		FUNC3(base, cardtype, onoff);
		if (FUNC1(base, cardtype) != onoff)
			return 4;
		onoff = !onoff;
	}

	if (cardtype == avm_m1)
		return 0;

	if ((FUNC2(base, FUNC0(cardtype)) & 0x0f) != 0x01)
		return 5;

	return 0;
}