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
struct musb {int /*<<< orphan*/  controller; int /*<<< orphan*/  mregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_BABBLE_CTL ; 
 int MUSB_BABBLE_FORCE_TXIDLE ; 
 int MUSB_BABBLE_STUCK_J ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static bool FUNC4(struct musb *musb)
{
	u8 babble_ctl;
	bool session_restart =  false;

	babble_ctl = FUNC1(musb->mregs, MUSB_BABBLE_CTL);
	FUNC0(musb->controller, "babble: MUSB_BABBLE_CTL value %x\n",
		babble_ctl);
	/*
	 * check line monitor flag to check whether babble is
	 * due to noise
	 */
	FUNC0(musb->controller, "STUCK_J is %s\n",
		babble_ctl & MUSB_BABBLE_STUCK_J ? "set" : "reset");

	if (babble_ctl & MUSB_BABBLE_STUCK_J) {
		int timeout = 10;

		/*
		 * babble is due to noise, then set transmit idle (d7 bit)
		 * to resume normal operation
		 */
		babble_ctl = FUNC1(musb->mregs, MUSB_BABBLE_CTL);
		babble_ctl |= MUSB_BABBLE_FORCE_TXIDLE;
		FUNC2(musb->mregs, MUSB_BABBLE_CTL, babble_ctl);

		/* wait till line monitor flag cleared */
		FUNC0(musb->controller, "Set TXIDLE, wait J to clear\n");
		do {
			babble_ctl = FUNC1(musb->mregs, MUSB_BABBLE_CTL);
			FUNC3(1);
		} while ((babble_ctl & MUSB_BABBLE_STUCK_J) && timeout--);

		/* check whether stuck_at_j bit cleared */
		if (babble_ctl & MUSB_BABBLE_STUCK_J) {
			/*
			 * real babble condition has occurred
			 * restart the controller to start the
			 * session again
			 */
			FUNC0(musb->controller, "J not cleared, misc (%x)\n",
				babble_ctl);
			session_restart = true;
		}
	} else {
		session_restart = true;
	}

	return session_restart;
}