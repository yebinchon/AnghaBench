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
struct renesas_usb3 {scalar_t__ role_sw_by_connector; } ;
struct device {int dummy; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 struct renesas_usb3* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
					enum usb_role role)
{
	struct renesas_usb3 *usb3 = FUNC0(dev);

	FUNC3(dev);

	if (usb3->role_sw_by_connector)
		FUNC1(dev, role);
	else
		FUNC2(dev, role);

	FUNC4(dev);

	return 0;
}