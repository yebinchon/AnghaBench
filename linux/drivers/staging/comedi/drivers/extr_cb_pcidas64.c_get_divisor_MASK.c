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
 unsigned int TIMER_BASE ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int ns, unsigned int flags)
{
	unsigned int divisor;

	switch (flags & CMDF_ROUND_MASK) {
	case CMDF_ROUND_UP:
		divisor = FUNC1(ns, TIMER_BASE);
		break;
	case CMDF_ROUND_DOWN:
		divisor = ns / TIMER_BASE;
		break;
	case CMDF_ROUND_NEAREST:
	default:
		divisor = FUNC0(ns, TIMER_BASE);
		break;
	}
	return divisor;
}