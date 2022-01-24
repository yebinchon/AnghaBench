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
typedef  int /*<<< orphan*/  u32 ;
struct musb {int /*<<< orphan*/  xceiv; int /*<<< orphan*/  controller; int /*<<< orphan*/  mregs; int /*<<< orphan*/  dev_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM355_DEEPSLEEP ; 
 int /*<<< orphan*/  DRVVBUS_FORCE ; 
 int /*<<< orphan*/  DRVVBUS_OVERRIDE ; 
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_VBUS ; 
 int MUSB_DEVCTL_VBUS_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct musb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct musb *musb)
{
	int	maxdelay = 30;
	u8	devctl, warn = 0;

	FUNC4(&musb->dev_timer);

	/* force VBUS off */
	if (FUNC2()) {
		u32	deepsleep = FUNC0(DM355_DEEPSLEEP);

		deepsleep &= ~DRVVBUS_FORCE;
		deepsleep |= DRVVBUS_OVERRIDE;
		FUNC1(deepsleep, DM355_DEEPSLEEP);
	}

	FUNC3(musb, 0 /*off*/, 1);

	/*
	 * delay, to avoid problems with module reload.
	 * if there's no peripheral connected, this can take a
	 * long time to fall, especially on EVM with huge C133.
	 */
	do {
		devctl = FUNC7(musb->mregs, MUSB_DEVCTL);
		if (!(devctl & MUSB_DEVCTL_VBUS))
			break;
		if ((devctl & MUSB_DEVCTL_VBUS) != warn) {
			warn = devctl & MUSB_DEVCTL_VBUS;
			FUNC5(musb->controller, "VBUS %d\n",
				warn >> MUSB_DEVCTL_VBUS_SHIFT);
		}
		FUNC6(1000);
		maxdelay--;
	} while (maxdelay > 0);

	/* in OTG mode, another host might be connected */
	if (devctl & MUSB_DEVCTL_VBUS)
		FUNC5(musb->controller, "VBUS off timeout (devctl %02x)\n", devctl);

	FUNC8();

	FUNC9(musb->xceiv);

	return 0;
}