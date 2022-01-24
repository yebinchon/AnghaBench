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
struct kobj_attribute {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj,
					struct kobj_attribute *attr,
					const char *buf, size_t count)
{
	int id;

	int num = FUNC2(buf, 10, &id);

	if (num == 1) {
		num = FUNC1(id);
		if (num)
			return num;
	} else if (!FUNC3("all", buf, 3)) {
		FUNC0();
	} else {
		return -EINVAL;
	}

	return count;
}