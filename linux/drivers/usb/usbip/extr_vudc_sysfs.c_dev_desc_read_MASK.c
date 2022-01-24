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
struct vudc {int /*<<< orphan*/  lock; int /*<<< orphan*/  desc_cached; int /*<<< orphan*/  dev_desc; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  int loff_t ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC5(struct file *file, struct kobject *kobj,
			     struct bin_attribute *attr, char *out,
			     loff_t off, size_t count)
{
	struct device *dev = FUNC1(kobj);
	struct vudc *udc = (struct vudc *)FUNC0(dev);
	char *desc_ptr = (char *) &udc->dev_desc;
	unsigned long flags;
	int ret;

	FUNC3(&udc->lock, flags);
	if (!udc->desc_cached) {
		ret = -ENODEV;
		goto unlock;
	}

	FUNC2(out, desc_ptr + off, count);
	ret = count;
unlock:
	FUNC4(&udc->lock, flags);
	return ret;
}