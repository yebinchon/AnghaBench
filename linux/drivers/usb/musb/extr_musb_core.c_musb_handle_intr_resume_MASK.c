#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct musb {int port1_status; int is_active; TYPE_2__* xceiv; int /*<<< orphan*/  int_usb; int /*<<< orphan*/  finish_resume_work; scalar_t__ rh_timer; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
 int MUSB_DEVCTL_HM ; 
 int MUSB_DEVCTL_VBUS ; 
 int MUSB_DEVCTL_VBUS_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 int /*<<< orphan*/  MUSB_INTR_DISCONNECT ; 
 int /*<<< orphan*/  MUSB_INTR_SUSPEND ; 
 int MUSB_PORT_STAT_RESUME ; 
 void* OTG_STATE_A_HOST ; 
#define  OTG_STATE_A_SUSPEND 131 
#define  OTG_STATE_B_IDLE 130 
#define  OTG_STATE_B_PERIPHERAL 129 
#define  OTG_STATE_B_WAIT_ACON 128 
 int USB_PORT_STAT_C_SUSPEND ; 
 int /*<<< orphan*/  USB_RESUME_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct musb*) ; 
 int /*<<< orphan*/  FUNC5 (struct musb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct musb *musb, u8 devctl)
{
	FUNC3(musb, "RESUME (%s)",
			FUNC7(musb->xceiv->otg->state));

	if (devctl & MUSB_DEVCTL_HM) {
		switch (musb->xceiv->otg->state) {
		case OTG_STATE_A_SUSPEND:
			/* remote wakeup? */
			musb->port1_status |=
					(USB_PORT_STAT_C_SUSPEND << 16)
					| MUSB_PORT_STAT_RESUME;
			musb->rh_timer = jiffies
				+ FUNC2(USB_RESUME_TIMEOUT);
			musb->xceiv->otg->state = OTG_STATE_A_HOST;
			musb->is_active = 1;
			FUNC5(musb);
			FUNC6(&musb->finish_resume_work,
				FUNC2(USB_RESUME_TIMEOUT));
			break;
		case OTG_STATE_B_WAIT_ACON:
			musb->xceiv->otg->state = OTG_STATE_B_PERIPHERAL;
			musb->is_active = 1;
			FUNC0(musb);
			break;
		default:
			FUNC1("bogus %s RESUME (%s)\n",
				"host",
				FUNC7(musb->xceiv->otg->state));
		}
	} else {
		switch (musb->xceiv->otg->state) {
		case OTG_STATE_A_SUSPEND:
			/* possibly DISCONNECT is upcoming */
			musb->xceiv->otg->state = OTG_STATE_A_HOST;
			FUNC5(musb);
			break;
		case OTG_STATE_B_WAIT_ACON:
		case OTG_STATE_B_PERIPHERAL:
			/* disconnect while suspended?  we may
			 * not get a disconnect irq...
			 */
			if ((devctl & MUSB_DEVCTL_VBUS)
					!= (3 << MUSB_DEVCTL_VBUS_SHIFT)
					) {
				musb->int_usb |= MUSB_INTR_DISCONNECT;
				musb->int_usb &= ~MUSB_INTR_SUSPEND;
				break;
			}
			FUNC4(musb);
			break;
		case OTG_STATE_B_IDLE:
			musb->int_usb &= ~MUSB_INTR_SUSPEND;
			break;
		default:
			FUNC1("bogus %s RESUME (%s)\n",
				"peripheral",
				FUNC7(musb->xceiv->otg->state));
		}
	}
}