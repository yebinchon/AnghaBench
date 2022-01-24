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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct port100 {int /*<<< orphan*/  cmd; int /*<<< orphan*/  udev; int /*<<< orphan*/  out_urb; int /*<<< orphan*/  in_urb; int /*<<< orphan*/  nfc_digital_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct port100* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *interface)
{
	struct port100 *dev;

	dev = FUNC5(interface);
	FUNC8(interface, NULL);

	FUNC2(dev->nfc_digital_dev);
	FUNC1(dev->nfc_digital_dev);

	FUNC6(dev->in_urb);
	FUNC6(dev->out_urb);

	FUNC4(dev->in_urb);
	FUNC4(dev->out_urb);
	FUNC7(dev->udev);

	FUNC0(dev->cmd);

	FUNC3(&interface->dev, "Sony Port-100 NFC device disconnected\n");
}