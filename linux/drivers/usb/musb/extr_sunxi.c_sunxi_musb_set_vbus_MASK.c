#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sunxi_glue {int /*<<< orphan*/  work; int /*<<< orphan*/  flags; } ;
struct musb {TYPE_3__* xceiv; TYPE_1__* controller; } ;
struct TYPE_6__ {TYPE_2__* otg; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  OTG_STATE_A_WAIT_VRISE ; 
 int /*<<< orphan*/  SUNXI_MUSB_FL_VBUS_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sunxi_glue* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct musb *musb, int is_on)
{
	struct sunxi_glue *glue = FUNC1(musb->controller->parent);

	if (is_on) {
		FUNC3(SUNXI_MUSB_FL_VBUS_ON, &glue->flags);
		musb->xceiv->otg->state = OTG_STATE_A_WAIT_VRISE;
	} else {
		FUNC0(SUNXI_MUSB_FL_VBUS_ON, &glue->flags);
	}

	FUNC2(&glue->work);
}