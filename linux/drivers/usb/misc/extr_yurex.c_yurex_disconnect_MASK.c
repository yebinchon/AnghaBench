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
struct usb_yurex {int disconnected; int /*<<< orphan*/  kref; int /*<<< orphan*/  waitq; int /*<<< orphan*/  async_queue; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  cntl_urb; int /*<<< orphan*/  urb; } ;
struct usb_interface {int minor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct usb_yurex* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yurex_class ; 
 int /*<<< orphan*/  yurex_delete ; 

__attribute__((used)) static void FUNC10(struct usb_interface *interface)
{
	struct usb_yurex *dev;
	int minor = interface->minor;

	dev = FUNC6(interface);
	FUNC8(interface, NULL);

	/* give back our minor */
	FUNC5(interface, &yurex_class);

	/* prevent more I/O from starting */
	FUNC7(dev->urb);
	FUNC7(dev->cntl_urb);
	FUNC3(&dev->io_mutex);
	dev->disconnected = 1;
	FUNC4(&dev->io_mutex);

	/* wakeup waiters */
	FUNC1(&dev->async_queue, SIGIO, POLL_IN);
	FUNC9(&dev->waitq);

	/* decrement our usage count */
	FUNC2(&dev->kref, yurex_delete);

	FUNC0(&interface->dev, "USB YUREX #%d now disconnected\n", minor);
}