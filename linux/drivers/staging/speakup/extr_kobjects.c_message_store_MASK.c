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
struct msg_group_t {int dummy; } ;
struct kobject {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t,struct msg_group_t*) ; 
 struct msg_group_t* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj, struct kobj_attribute *attr,
			     const char *buf, size_t count)
{
	struct msg_group_t *group = FUNC2(attr->attr.name);

	if (FUNC0(!group))
		return -EINVAL;

	return FUNC1(buf, count, group);
}