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
struct rcar_gen3_usb3 {scalar_t__ base; scalar_t__ ssc_range; } ;

/* Variables and functions */
 int CLKSET0_PRIVATE ; 
 int CLKSET0_USB30_FSEL_USB_EXTAL ; 
 int PHY_ENABLE_RESET_EN ; 
 scalar_t__ USB30_CLKSET0 ; 
 scalar_t__ USB30_PHY_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct rcar_gen3_usb3*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_gen3_usb3*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct rcar_gen3_usb3 *r)
{
	FUNC2(r, false);
	if (r->ssc_range)
		FUNC0(r);
	FUNC3(CLKSET0_PRIVATE | CLKSET0_USB30_FSEL_USB_EXTAL,
	       r->base + USB30_CLKSET0);
	FUNC3(PHY_ENABLE_RESET_EN, r->base + USB30_PHY_ENABLE);
	FUNC2(r, true);
	FUNC1(10, 20);
	FUNC2(r, false);
}