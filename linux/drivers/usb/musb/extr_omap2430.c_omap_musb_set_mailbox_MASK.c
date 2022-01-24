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
struct omap_musb_board_data {int /*<<< orphan*/  interface_type; } ;
struct omap2430_glue {int status; int /*<<< orphan*/  control_otghs; } ;
struct musb_hdrc_platform_data {struct omap_musb_board_data* board_data; } ;
struct musb {TYPE_1__* xceiv; int /*<<< orphan*/  controller; int /*<<< orphan*/  gadget_driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int /*<<< orphan*/  last_event; int /*<<< orphan*/  notifier; TYPE_2__* otg; } ;

/* Variables and functions */
#define  MUSB_ID_FLOAT 131 
#define  MUSB_ID_GROUND 130 
 int /*<<< orphan*/  MUSB_INTERFACE_UTMI ; 
#define  MUSB_VBUS_OFF 129 
#define  MUSB_VBUS_VALID 128 
 int /*<<< orphan*/  OTG_STATE_A_IDLE ; 
 int /*<<< orphan*/  OTG_STATE_B_IDLE ; 
 int /*<<< orphan*/  USB_EVENT_ID ; 
 int /*<<< orphan*/  USB_EVENT_NONE ; 
 int /*<<< orphan*/  USB_EVENT_VBUS ; 
 int /*<<< orphan*/  USB_MODE_DEVICE ; 
 int /*<<< orphan*/  USB_MODE_DISCONNECT ; 
 int /*<<< orphan*/  USB_MODE_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct musb_hdrc_platform_data* FUNC2 (int /*<<< orphan*/ ) ; 
 struct musb* FUNC3 (struct omap2430_glue*) ; 
 int /*<<< orphan*/  FUNC4 (struct musb*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct omap2430_glue *glue)
{
	struct musb *musb = FUNC3(glue);
	struct musb_hdrc_platform_data *pdata =
		FUNC2(musb->controller);
	struct omap_musb_board_data *data = pdata->board_data;

	FUNC7(musb->controller);
	switch (glue->status) {
	case MUSB_ID_GROUND:
		FUNC1(musb->controller, "ID GND\n");

		musb->xceiv->otg->state = OTG_STATE_A_IDLE;
		musb->xceiv->last_event = USB_EVENT_ID;
		if (musb->gadget_driver) {
			FUNC5(glue->control_otghs,
				USB_MODE_HOST);
			FUNC4(musb, 1);
		}
		break;

	case MUSB_VBUS_VALID:
		FUNC1(musb->controller, "VBUS Connect\n");

		musb->xceiv->otg->state = OTG_STATE_B_IDLE;
		musb->xceiv->last_event = USB_EVENT_VBUS;
		FUNC5(glue->control_otghs, USB_MODE_DEVICE);
		break;

	case MUSB_ID_FLOAT:
	case MUSB_VBUS_OFF:
		FUNC1(musb->controller, "VBUS Disconnect\n");

		musb->xceiv->last_event = USB_EVENT_NONE;
		if (musb->gadget_driver)
			FUNC4(musb, 0);

		if (data->interface_type == MUSB_INTERFACE_UTMI)
			FUNC6(musb->xceiv->otg, 0);

		FUNC5(glue->control_otghs,
			USB_MODE_DISCONNECT);
		break;
	default:
		FUNC1(musb->controller, "ID float\n");
	}
	FUNC8(musb->controller);
	FUNC9(musb->controller);
	FUNC0(&musb->xceiv->notifier,
			musb->xceiv->last_event, NULL);
}