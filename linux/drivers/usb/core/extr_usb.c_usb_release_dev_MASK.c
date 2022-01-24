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
struct usb_hcd {int dummy; } ;
struct usb_device {struct usb_device* serial; struct usb_device* manufacturer; struct usb_device* product; int /*<<< orphan*/  bus; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct usb_device *udev;
	struct usb_hcd *hcd;

	udev = FUNC3(dev);
	hcd = FUNC0(udev->bus);

	FUNC4(udev);
	FUNC6(udev);
	FUNC2(dev->of_node);
	FUNC5(hcd);
	FUNC1(udev->product);
	FUNC1(udev->manufacturer);
	FUNC1(udev->serial);
	FUNC1(udev);
}