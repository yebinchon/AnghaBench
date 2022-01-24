#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_gadget {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  otg; } ;
struct TYPE_5__ {int /*<<< orphan*/ * dc_clk; int /*<<< orphan*/ * driver; int /*<<< orphan*/  lock; TYPE_4__* transceiver; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* udc ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct usb_gadget *g)
{
	unsigned long	flags;

	if (udc->dc_clk != NULL)
		FUNC2(1);

	if (FUNC1())
		FUNC3(&udc->gadget, 0);

	if (!FUNC0(udc->transceiver))
		(void) FUNC4(udc->transceiver->otg, NULL);
	else
		FUNC5(udc);

	FUNC6(&udc->lock, flags);
	FUNC8(udc);
	FUNC7(&udc->lock, flags);

	udc->driver = NULL;

	if (udc->dc_clk != NULL)
		FUNC2(0);

	return 0;
}