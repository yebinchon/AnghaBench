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
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  major ; 
 int minors ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/ * usb_gadget_class ; 

__attribute__((used)) static int FUNC7(int count)
{
	int status;
	dev_t devt;

	usb_gadget_class = FUNC4(THIS_MODULE, "usb_printer_gadget");
	if (FUNC0(usb_gadget_class)) {
		status = FUNC2(usb_gadget_class);
		usb_gadget_class = NULL;
		FUNC6("unable to create usb_gadget class %d\n", status);
		return status;
	}

	status = FUNC3(&devt, 0, count, "USB printer gadget");
	if (status) {
		FUNC6("alloc_chrdev_region %d\n", status);
		FUNC5(usb_gadget_class);
		usb_gadget_class = NULL;
		return status;
	}

	major = FUNC1(devt);
	minors = count;

	return status;
}