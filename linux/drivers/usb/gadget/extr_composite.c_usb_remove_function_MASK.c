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
struct usb_function {scalar_t__ bind_deactivated; int /*<<< orphan*/  (* unbind ) (struct usb_configuration*,struct usb_function*) ;int /*<<< orphan*/  list; int /*<<< orphan*/  endpoints; int /*<<< orphan*/  (* disable ) (struct usb_function*) ;} ;
struct usb_configuration {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_configuration*,struct usb_function*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_function*) ; 

void FUNC5(struct usb_configuration *c, struct usb_function *f)
{
	if (f->disable)
		f->disable(f);

	FUNC0(f->endpoints, 32);
	FUNC1(&f->list);
	if (f->unbind)
		f->unbind(c, f);

	if (f->bind_deactivated)
		FUNC4(f);
}