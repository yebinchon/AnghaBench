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
struct musb {int quirk_retries; int session; int /*<<< orphan*/  controller; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  flush_irq_work; int /*<<< orphan*/  mregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_FSDEV ; 
 int MUSB_DEVCTL_HR ; 
 int MUSB_DEVCTL_LSDEV ; 
 int MUSB_DEVCTL_SESSION ; 
#define  MUSB_QUIRK_A_DISCONNECT_19 129 
#define  MUSB_QUIRK_B_INVALID_VBUS_91 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct musb *musb)
{
	u8 devctl, s;
	int error;

	devctl = FUNC3(musb->mregs, MUSB_DEVCTL);

	/* Handle session status quirks first */
	s = MUSB_DEVCTL_FSDEV | MUSB_DEVCTL_LSDEV |
		MUSB_DEVCTL_HR;
	switch (devctl & ~s) {
	case MUSB_QUIRK_B_INVALID_VBUS_91:
		if (musb->quirk_retries && !musb->flush_irq_work) {
			FUNC2(musb,
				 "Poll devctl on invalid vbus, assume no session");
			FUNC7(&musb->irq_work,
					      FUNC1(1000));
			musb->quirk_retries--;
			return;
		}
		/* fall through */
	case MUSB_QUIRK_A_DISCONNECT_19:
		if (musb->quirk_retries && !musb->flush_irq_work) {
			FUNC2(musb,
				 "Poll devctl on possible host mode disconnect");
			FUNC7(&musb->irq_work,
					      FUNC1(1000));
			musb->quirk_retries--;
			return;
		}
		if (!musb->session)
			break;
		FUNC2(musb, "Allow PM on possible host mode disconnect");
		FUNC5(musb->controller);
		FUNC6(musb->controller);
		musb->session = false;
		return;
	default:
		break;
	}

	/* No need to do anything if session has not changed */
	s = devctl & MUSB_DEVCTL_SESSION;
	if (s == musb->session)
		return;

	/* Block PM or allow PM? */
	if (s) {
		FUNC2(musb, "Block PM on active session: %02x", devctl);
		error = FUNC4(musb->controller);
		if (error < 0)
			FUNC0(musb->controller, "Could not enable: %i\n",
				error);
		musb->quirk_retries = 3;
	} else {
		FUNC2(musb, "Allow PM with no session: %02x", devctl);
		FUNC5(musb->controller);
		FUNC6(musb->controller);
	}

	musb->session = s;
}