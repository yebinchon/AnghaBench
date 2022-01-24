#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {int /*<<< orphan*/  speed; TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_device *udev, char *buffer, size_t size)
{
	return FUNC2(buffer, size, "%04hx:%04hx v%04hx %s",
		FUNC1(udev->descriptor.idVendor),
		FUNC1(udev->descriptor.idProduct),
		FUNC0(udev),
		FUNC3(udev->speed));
}