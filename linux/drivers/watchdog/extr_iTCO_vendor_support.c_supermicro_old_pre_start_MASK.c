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
struct resource {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct resource *smires)
{
	unsigned long val32;

	/* Bit 13: TCO_EN -> 0 = Disables TCO logic generating an SMI# */
	val32 = FUNC0(smires->start);
	val32 &= 0xffffdfff;	/* Turn off SMI clearing watchdog */
	FUNC1(val32, smires->start);	/* Needed to activate watchdog */
}