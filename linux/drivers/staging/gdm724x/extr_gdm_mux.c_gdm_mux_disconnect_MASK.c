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
struct usb_device {int dummy; } ;
struct tty_dev {struct tty_dev* priv_dev; } ;
struct mux_dev {struct mux_dev* priv_dev; } ;

/* Variables and functions */
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_dev*) ; 
 struct tty_dev* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *intf)
{
	struct tty_dev *tty_dev;
	struct mux_dev *mux_dev;
	struct usb_device *usbdev = FUNC0(intf);

	tty_dev = FUNC4(intf);

	mux_dev = tty_dev->priv_dev;

	FUNC2(mux_dev);
	FUNC3(tty_dev);

	FUNC1(mux_dev);
	FUNC1(tty_dev);

	FUNC5(usbdev);
}