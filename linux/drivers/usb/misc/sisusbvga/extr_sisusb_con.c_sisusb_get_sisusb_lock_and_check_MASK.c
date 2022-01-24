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
struct sisusb_usb_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ * havethisconsole; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sisusb_usb_data* FUNC3 (unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct sisusb_usb_data*) ; 

__attribute__((used)) static struct sisusb_usb_data *
FUNC5(unsigned short console)
{
	struct sisusb_usb_data *sisusb;

	/* We can't handle console calls in non-schedulable
	 * context due to our locks and the USB transport.
	 * So we simply ignore them. This should only affect
	 * some calls to printk.
	 */
	if (FUNC0())
		return NULL;

	sisusb = FUNC3(console);
	if (!sisusb)
		return NULL;

	FUNC1(&sisusb->lock);

	if (!FUNC4(sisusb) ||
	    !sisusb->havethisconsole[console]) {
		FUNC2(&sisusb->lock);
		return NULL;
	}

	return sisusb;
}