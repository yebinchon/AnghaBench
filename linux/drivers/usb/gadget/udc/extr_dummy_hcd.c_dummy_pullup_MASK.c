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
struct usb_gadget {int /*<<< orphan*/  dev; } ;
struct dummy_hcd {int dummy; } ;
struct dummy {int pullup; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dummy_hcd*) ; 
 struct dummy* FUNC1 (int /*<<< orphan*/ *) ; 
 struct dummy_hcd* FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (struct dummy_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget *_gadget, int value)
{
	struct dummy_hcd *dum_hcd;
	struct dummy	*dum;
	unsigned long	flags;

	dum = FUNC1(&_gadget->dev);
	dum_hcd = FUNC2(_gadget);

	FUNC4(&dum->lock, flags);
	dum->pullup = (value != 0);
	FUNC3(dum_hcd);
	FUNC5(&dum->lock, flags);

	FUNC6(FUNC0(dum_hcd));
	return 0;
}