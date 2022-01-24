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
struct usb_gadget {int is_selfpowered; } ;
struct at91_udc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct at91_udc* FUNC2 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC3(struct usb_gadget *gadget, int is_on)
{
	struct at91_udc	*udc = FUNC2(gadget);
	unsigned long	flags;

	FUNC0(&udc->lock, flags);
	gadget->is_selfpowered = (is_on != 0);
	FUNC1(&udc->lock, flags);
	return 0;
}