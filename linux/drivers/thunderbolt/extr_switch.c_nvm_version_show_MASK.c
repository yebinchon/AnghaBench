#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tb_switch {TYPE_2__* tb; TYPE_1__* nvm; scalar_t__ safe_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int major; int minor; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int FUNC3 (char*,char*,int,int) ; 
 struct tb_switch* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct tb_switch *sw = FUNC4(dev);
	int ret;

	if (!FUNC0(&sw->tb->lock))
		return FUNC2();

	if (sw->safe_mode)
		ret = -ENODATA;
	else if (!sw->nvm)
		ret = -EAGAIN;
	else
		ret = FUNC3(buf, "%x.%x\n", sw->nvm->major, sw->nvm->minor);

	FUNC1(&sw->tb->lock);

	return ret;
}