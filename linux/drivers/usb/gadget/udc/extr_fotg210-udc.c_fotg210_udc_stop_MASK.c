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
struct fotg210_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fotg210_udc*) ; 
 struct fotg210_udc* FUNC1 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct usb_gadget *g)
{
	struct fotg210_udc *fotg210 = FUNC1(g);
	unsigned long	flags;

	FUNC2(&fotg210->lock, flags);

	FUNC0(fotg210);
	fotg210->driver = NULL;

	FUNC3(&fotg210->lock, flags);

	return 0;
}