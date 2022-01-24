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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int a_clr_err; int /*<<< orphan*/  lock; } ;
struct ci_hdrc {TYPE_1__ fsm; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*) ; 
 struct ci_hdrc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct ci_hdrc	*ci = FUNC1(dev);

	if (count > 2)
		return -1;

	FUNC2(&ci->fsm.lock);
	if (buf[0] == '1')
		ci->fsm.a_clr_err = 1;

	FUNC0(ci);
	FUNC3(&ci->fsm.lock);

	return count;
}