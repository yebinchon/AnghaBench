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
struct kobject {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t UUID_STRING_LEN ; 
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kobject*,struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj, struct device *dev,
			    const char *buf, size_t count)
{
	char *str;
	guid_t uuid;
	int ret;

	if ((count < UUID_STRING_LEN) || (count > UUID_STRING_LEN + 1))
		return -EINVAL;

	str = FUNC2(buf, count, GFP_KERNEL);
	if (!str)
		return -ENOMEM;

	ret = FUNC0(str, &uuid);
	FUNC1(str);
	if (ret)
		return ret;

	ret = FUNC3(kobj, dev, &uuid);
	if (ret)
		return ret;

	return count;
}