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
struct usb_gadget {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hidg_class ; 
 int /*<<< orphan*/  major ; 
 int minors ; 

int FUNC6(struct usb_gadget *g, int count)
{
	int status;
	dev_t dev;

	hidg_class = FUNC4(THIS_MODULE, "hidg");
	if (FUNC0(hidg_class)) {
		status = FUNC2(hidg_class);
		hidg_class = NULL;
		return status;
	}

	status = FUNC3(&dev, 0, count, "hidg");
	if (status) {
		FUNC5(hidg_class);
		hidg_class = NULL;
		return status;
	}

	major = FUNC1(dev);
	minors = count;

	return 0;
}