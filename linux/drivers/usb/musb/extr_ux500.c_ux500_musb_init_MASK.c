#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct musb {int /*<<< orphan*/  isr; int /*<<< orphan*/  controller; TYPE_1__ nb; int /*<<< orphan*/  xceiv; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  musb_otg_notifications ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ux500_musb_interrupt ; 

__attribute__((used)) static int FUNC5(struct musb *musb)
{
	int status;

	musb->xceiv = FUNC3(USB_PHY_TYPE_USB2);
	if (FUNC0(musb->xceiv)) {
		FUNC2("HS USB OTG: no transceiver configured\n");
		return -EPROBE_DEFER;
	}

	musb->nb.notifier_call = musb_otg_notifications;
	status = FUNC4(musb->xceiv, &musb->nb);
	if (status < 0) {
		FUNC1(musb->controller, "notification register failed\n");
		return status;
	}

	musb->isr = ux500_musb_interrupt;

	return 0;
}