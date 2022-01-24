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
struct musb {int /*<<< orphan*/  mregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct musb *musb)
{
	/* stop IRQs, timers, ... */
	FUNC1(musb);
	FUNC0(musb);
	FUNC3(musb->mregs, MUSB_DEVCTL, 0);

	/* FIXME
	 *  - mark host and/or peripheral drivers unusable/inactive
	 *  - disable DMA (and enable it in HdrcStart)
	 *  - make sure we can musb_start() after musb_stop(); with
	 *    OTG mode, gadget driver module rmmod/modprobe cycles that
	 *  - ...
	 */
	FUNC2(musb, 0);
}