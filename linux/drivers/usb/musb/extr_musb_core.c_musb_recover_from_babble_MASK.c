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
struct musb {scalar_t__ dyn_fifo; int /*<<< orphan*/  mregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int /*<<< orphan*/  MUSB_DEVCTL_SESSION ; 
 int FUNC0 (struct musb*) ; 
 int FUNC1 (struct musb*) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*) ; 
 int FUNC4 (struct musb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct musb*) ; 
 int /*<<< orphan*/  FUNC7 (struct musb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct musb *musb)
{
	int ret;
	u8 devctl;

	FUNC2(musb);

	/*
	 * wait at least 320 cycles of 60MHz clock. That's 5.3us, we will give
	 * it some slack and wait for 10us.
	 */
	FUNC9(10);

	ret  = FUNC4(musb);
	if (ret) {
		FUNC3(musb);
		return;
	}

	/* drop session bit */
	devctl = FUNC5(musb->mregs, MUSB_DEVCTL);
	devctl &= ~MUSB_DEVCTL_SESSION;
	FUNC8(musb->mregs, MUSB_DEVCTL, devctl);

	/* tell usbcore about it */
	FUNC6(musb);

	/*
	 * When a babble condition occurs, the musb controller
	 * removes the session bit and the endpoint config is lost.
	 */
	if (musb->dyn_fifo)
		ret = FUNC1(musb);
	else
		ret = FUNC0(musb);

	/* restart session */
	if (ret == 0)
		FUNC7(musb);
}