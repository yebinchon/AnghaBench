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
struct usb_lcd {int disconnected; int /*<<< orphan*/  kref; int /*<<< orphan*/  submitted; int /*<<< orphan*/  io_rwsem; } ;
struct usb_interface {int minor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lcd_class ; 
 int /*<<< orphan*/  lcd_delete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct usb_lcd* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *interface)
{
	struct usb_lcd *dev = FUNC5(interface);
	int minor = interface->minor;

	/* give back our minor */
	FUNC4(interface, &lcd_class);

	FUNC1(&dev->io_rwsem);
	dev->disconnected = 1;
	FUNC3(&dev->io_rwsem);

	FUNC6(&dev->submitted);

	/* decrement our usage count */
	FUNC2(&dev->kref, lcd_delete);

	FUNC0(&interface->dev, "USB LCD #%d now disconnected\n", minor);
}