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
struct se_device {TYPE_1__* transport; scalar_t__ export_count; } ;
struct se_dev_attrib {struct se_device* da_dev; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* format_prot ) (struct se_device*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (char*,struct se_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char const*,int*) ; 
 int FUNC3 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_device*) ; 
 struct se_dev_attrib* FUNC5 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item,
		const char *page, size_t count)
{
	struct se_dev_attrib *da = FUNC5(item);
	struct se_device *dev = da->da_dev;
	bool flag;
	int ret;

	ret = FUNC2(page, &flag);
	if (ret < 0)
		return ret;

	if (!flag)
		return count;

	if (!dev->transport->format_prot) {
		FUNC1("DIF protection format not supported by backend %s\n",
		       dev->transport->name);
		return -ENOSYS;
	}
	if (!FUNC4(dev)) {
		FUNC1("DIF protection format requires device to be configured\n");
		return -ENODEV;
	}
	if (dev->export_count) {
		FUNC1("dev[%p]: Unable to format SE Device PROT type while"
		       " export_count is %d\n", dev, dev->export_count);
		return -EINVAL;
	}

	ret = dev->transport->format_prot(dev);
	if (ret)
		return ret;

	FUNC0("dev[%p]: SE Device Protection Format complete\n", dev);
	return count;
}