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
#define  CMDF_ROUND_NEAREST 129 
#define  CMDF_ROUND_UP 128 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int EINVAL ; 
 unsigned int PCI1760_PWM_TIMEBASE ; 

__attribute__((used)) static int FUNC2(unsigned int flags, unsigned int ns)
{
	unsigned int divisor;

	switch (flags) {
	case CMDF_ROUND_NEAREST:
		divisor = FUNC0(ns, PCI1760_PWM_TIMEBASE);
		break;
	case CMDF_ROUND_UP:
		divisor = FUNC1(ns, PCI1760_PWM_TIMEBASE);
		break;
	case CMDF_ROUND_DOWN:
		divisor = ns / PCI1760_PWM_TIMEBASE;
		break;
	default:
		return -EINVAL;
	}

	if (divisor < 1)
		divisor = 1;
	if (divisor > 0xffff)
		divisor = 0xffff;

	return divisor;
}