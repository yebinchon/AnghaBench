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
typedef  int u8 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static u8 FUNC1(u16 chipid)
{
	switch (chipid) {
	case 0x5365:
		return 7;
	case 0x4306:
		return 6;
	case 0x4310:
		return 8;
	case 0x4307:
	case 0x4301:
		return 5;
	case 0x4401:
	case 0x4402:
		return 3;
	case 0x4710:
	case 0x4610:
	case 0x4704:
		return 9;
	default:
		FUNC0("CHIPID not in nrcores fallback list\n");
	}

	return 1;
}