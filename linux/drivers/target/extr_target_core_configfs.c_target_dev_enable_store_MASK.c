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
struct se_device {int dummy; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,char*) ; 
 int FUNC2 (struct se_device*) ; 
 struct se_device* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
		const char *page, size_t count)
{
	struct se_device *dev = FUNC3(item);
	char *ptr;
	int ret;

	ptr = FUNC1(page, "1");
	if (!ptr) {
		FUNC0("For dev_enable ops, only valid value"
				" is \"1\"\n");
		return -EINVAL;
	}

	ret = FUNC2(dev);
	if (ret)
		return ret;
	return count;
}