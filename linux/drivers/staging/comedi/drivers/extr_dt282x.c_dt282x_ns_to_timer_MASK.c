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

/* Variables and functions */
#define  CMDF_ROUND_DOWN 130 
 unsigned int CMDF_ROUND_MASK ; 
#define  CMDF_ROUND_NEAREST 129 
#define  CMDF_ROUND_UP 128 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int DT2821_DIVIDER_MAX ; 
 unsigned int DT2821_OSC_BASE ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int DT2821_PRESCALE_MAX ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC5(unsigned int *ns, unsigned int flags)
{
	unsigned int prescale, base, divider;

	for (prescale = 0; prescale <= DT2821_PRESCALE_MAX; prescale++) {
		if (prescale == 1)	/* 0 and 1 are both divide by 1 */
			continue;
		base = DT2821_OSC_BASE * FUNC2(prescale);
		switch (flags & CMDF_ROUND_MASK) {
		case CMDF_ROUND_NEAREST:
		default:
			divider = FUNC0(*ns, base);
			break;
		case CMDF_ROUND_DOWN:
			divider = (*ns) / base;
			break;
		case CMDF_ROUND_UP:
			divider = FUNC1(*ns, base);
			break;
		}
		if (divider <= DT2821_DIVIDER_MAX)
			break;
	}
	if (divider > DT2821_DIVIDER_MAX) {
		prescale = DT2821_PRESCALE_MAX;
		divider = DT2821_DIVIDER_MAX;
		base = DT2821_OSC_BASE * FUNC2(prescale);
	}
	*ns = divider * base;
	return FUNC4(prescale) |
	       FUNC3(divider);
}