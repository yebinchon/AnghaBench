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
struct usb_pcwd_private {int /*<<< orphan*/  mtx; scalar_t__ exists; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cards_found ; 
 int /*<<< orphan*/  disconnect_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_pcwd_private* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_pcwd_private*) ; 
 int /*<<< orphan*/  usb_pcwd_miscdev ; 
 int /*<<< orphan*/  usb_pcwd_notifier ; 
 int /*<<< orphan*/  FUNC7 (struct usb_pcwd_private*) ; 
 int /*<<< orphan*/  usb_pcwd_temperature_miscdev ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *interface)
{
	struct usb_pcwd_private *usb_pcwd;

	/* prevent races with open() */
	FUNC1(&disconnect_mutex);

	usb_pcwd = FUNC5(interface);
	FUNC8(interface, NULL);

	FUNC1(&usb_pcwd->mtx);

	/* Stop the timer before we leave */
	if (!nowayout)
		FUNC7(usb_pcwd);

	/* We should now stop communicating with the USB PCWD device */
	usb_pcwd->exists = 0;

	/* Deregister */
	FUNC0(&usb_pcwd_miscdev);
	FUNC0(&usb_pcwd_temperature_miscdev);
	FUNC4(&usb_pcwd_notifier);

	FUNC2(&usb_pcwd->mtx);

	/* Delete the USB PCWD device */
	FUNC6(usb_pcwd);

	cards_found--;

	FUNC2(&disconnect_mutex);

	FUNC3("USB PC Watchdog disconnected\n");
}