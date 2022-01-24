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
struct usb_bus {unsigned int busnum; int /*<<< orphan*/ * controller; } ;
struct mon_bus {struct device* classdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int MON_BIN_MAX_MINOR ; 
 struct device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  mon_bin_class ; 
 int /*<<< orphan*/  mon_bin_dev0 ; 

int FUNC4(struct mon_bus *mbus, const struct usb_bus *ubus)
{
	struct device *dev;
	unsigned minor = ubus? ubus->busnum: 0;

	if (minor >= MON_BIN_MAX_MINOR)
		return 0;

	dev = FUNC3(mon_bin_class, ubus ? ubus->controller : NULL,
			    FUNC2(FUNC1(mon_bin_dev0), minor), NULL,
			    "usbmon%d", minor);
	if (FUNC0(dev))
		return 0;

	mbus->classdev = dev;
	return 1;
}