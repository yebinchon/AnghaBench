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
struct usb_gadget {int dummy; } ;
struct dummy_hcd {struct dummy* dum; } ;
struct dummy {scalar_t__ callback_usage; int /*<<< orphan*/  lock; int /*<<< orphan*/ * driver; scalar_t__ ints_enabled; } ;

/* Variables and functions */
 struct dummy_hcd* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dummy*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget *g)
{
	struct dummy_hcd	*dum_hcd = FUNC0(g);
	struct dummy		*dum = dum_hcd->dum;

	FUNC1(&dum->lock);
	dum->ints_enabled = 0;
	FUNC3(dum);

	/* emulate synchronize_irq(): wait for callbacks to finish */
	while (dum->callback_usage > 0) {
		FUNC2(&dum->lock);
		FUNC4(1000, 2000);
		FUNC1(&dum->lock);
	}

	dum->driver = NULL;
	FUNC2(&dum->lock);

	return 0;
}