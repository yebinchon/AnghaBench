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
typedef  int /*<<< orphan*/  u8 ;
struct musb {int /*<<< orphan*/  mregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_POWER ; 
 int /*<<< orphan*/  MUSB_POWER_SOFTCONN ; 
 int /*<<< orphan*/  FUNC0 (struct musb*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct musb *musb, int is_on)
{
	u8 power;

	power = FUNC1(musb->mregs, MUSB_POWER);
	if (is_on)
		power |= MUSB_POWER_SOFTCONN;
	else
		power &= ~MUSB_POWER_SOFTCONN;

	/* FIXME if on, HdrcStart; if off, HdrcStop */

	FUNC0(musb, "gadget D+ pullup %s",
		is_on ? "on" : "off");
	FUNC2(musb->mregs, MUSB_POWER, power);
}