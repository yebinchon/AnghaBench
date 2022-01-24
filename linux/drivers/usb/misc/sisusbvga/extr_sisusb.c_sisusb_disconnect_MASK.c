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
struct sisusb_usb_data {int /*<<< orphan*/  kref; int /*<<< orphan*/  lock; scalar_t__ ready; scalar_t__ present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  sisusb_delete ; 
 int /*<<< orphan*/  FUNC4 (struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct sisusb_usb_data* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_sisusb_class ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct sisusb_usb_data *sisusb;

	/* This should *not* happen */
	sisusb = FUNC7(intf);
	if (!sisusb)
		return;

#ifdef CONFIG_USB_SISUSBVGA_CON
	sisusb_console_exit(sisusb);
#endif

	FUNC6(intf, &usb_sisusb_class);

	FUNC1(&sisusb->lock);

	/* Wait for all URBs to complete and kill them in case (MUST do) */
	if (!FUNC5(sisusb))
		FUNC4(sisusb);

	FUNC8(intf, NULL);

	sisusb->present = 0;
	sisusb->ready = 0;

	FUNC2(&sisusb->lock);

	/* decrement our usage count */
	FUNC0(&sisusb->kref, sisusb_delete);
}