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
 unsigned int FUNC0 (int) ; 

__attribute__((used)) static unsigned int FUNC1(unsigned int mA)
{
	unsigned int val = 0;

	switch (mA) {
	case 2:
		break;
	case 4:
		val |= FUNC0(19);
		break;
	case 6:
		val |= FUNC0(20);
		break;
	case 8:
		val |= FUNC0(19) | FUNC0(20);
		break;
	case 10:
		val |= FUNC0(21);
		break;
	case 12:
		val |= FUNC0(21) | FUNC0(19);
		break;
	case 14:
		val |= FUNC0(21) | FUNC0(20);
		break;
	case 16:
		val |= FUNC0(19) | FUNC0(20) | FUNC0(21);
		break;
	case 20:
		val |= FUNC0(22);
		break;
	case 21:
		val |= FUNC0(22) | FUNC0(19);
		break;
	case 24:
		val |= FUNC0(22) | FUNC0(20);
		break;
	case 25:
		val |= FUNC0(22) | FUNC0(20) | FUNC0(19);
		break;
	case 27:
		val |= FUNC0(22) | FUNC0(21);
		break;
	case 29:
		val |= FUNC0(22) | FUNC0(21) | FUNC0(19);
		break;
	case 31:
		val |= FUNC0(22) | FUNC0(21) | FUNC0(20);
		break;
	case 33:
		val |= FUNC0(22) | FUNC0(21) | FUNC0(20) | FUNC0(19);
		break;
	default:
		break;
	}

	return val;
}