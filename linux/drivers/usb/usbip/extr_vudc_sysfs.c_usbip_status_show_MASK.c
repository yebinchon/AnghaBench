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
struct TYPE_2__ {int status; int /*<<< orphan*/  lock; } ;
struct vudc {TYPE_1__ ud; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			       struct device_attribute *attr, char *out)
{
	struct vudc *udc = (struct vudc *) FUNC1(dev);
	int status;

	if (!udc) {
		FUNC0(dev, "no device");
		return -ENODEV;
	}
	FUNC3(&udc->ud.lock);
	status = udc->ud.status;
	FUNC4(&udc->ud.lock);

	return FUNC2(out, PAGE_SIZE, "%d\n", status);
}