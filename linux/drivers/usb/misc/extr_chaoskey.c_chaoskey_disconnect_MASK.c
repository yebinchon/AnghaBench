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
struct usb_interface {int dummy; } ;
struct chaoskey {int present; int /*<<< orphan*/  lock; int /*<<< orphan*/  open; int /*<<< orphan*/  urb; int /*<<< orphan*/  hwrng; scalar_t__ hwrng_registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  chaoskey_class ; 
 int /*<<< orphan*/  FUNC0 (struct chaoskey*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct chaoskey* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *interface)
{
	struct chaoskey	*dev;

	FUNC4(interface, "disconnect");
	dev = FUNC6(interface);
	if (!dev) {
		FUNC4(interface, "disconnect failed - no dev");
		return;
	}

	if (dev->hwrng_registered)
		FUNC1(&dev->hwrng);

	FUNC5(interface, &chaoskey_class);

	FUNC8(interface, NULL);
	FUNC2(&dev->lock);

	dev->present = false;
	FUNC7(dev->urb);

	if (!dev->open) {
		FUNC3(&dev->lock);
		FUNC0(dev);
	} else
		FUNC3(&dev->lock);

	FUNC4(interface, "disconnect done");
}