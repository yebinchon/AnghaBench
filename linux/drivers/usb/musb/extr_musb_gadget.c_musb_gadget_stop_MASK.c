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
struct usb_gadget {int dummy; } ;
struct musb {int /*<<< orphan*/  controller; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  lock; int /*<<< orphan*/ * gadget_driver; scalar_t__ is_active; TYPE_1__* xceiv; int /*<<< orphan*/  g; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct TYPE_3__ {TYPE_2__* otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  OTG_STATE_UNDEFINED ; 
 struct musb* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct musb*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct usb_gadget *g)
{
	struct musb	*musb = FUNC0(g);
	unsigned long	flags;

	FUNC6(musb->controller);

	/*
	 * REVISIT always use otg_set_peripheral() here too;
	 * this needs to shut down the OTG engine.
	 */

	FUNC10(&musb->lock, flags);

	FUNC2(musb);

	(void) FUNC1(&musb->g, 0);

	musb->xceiv->otg->state = OTG_STATE_UNDEFINED;
	FUNC4(musb);
	FUNC5(musb->xceiv->otg, NULL);

	musb->is_active = 0;
	musb->gadget_driver = NULL;
	FUNC3(musb, 0);
	FUNC11(&musb->lock, flags);

	/*
	 * FIXME we need to be able to register another
	 * gadget driver here and have everything work;
	 * that currently misbehaves.
	 */

	/* Force check of devctl register for PM runtime */
	FUNC9(&musb->irq_work, 0);

	FUNC7(musb->controller);
	FUNC8(musb->controller);

	return 0;
}