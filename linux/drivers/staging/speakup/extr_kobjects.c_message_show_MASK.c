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
struct msg_group_t {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct kobject {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ speakup_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct msg_group_t* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj,
			    struct kobj_attribute *attr, char *buf)
{
	ssize_t retval = 0;
	struct msg_group_t *group = FUNC4(attr->attr.name);
	unsigned long flags;

	if (FUNC0(!group))
		return -EINVAL;

	FUNC2(&speakup_info.spinlock, flags);
	retval = FUNC1(buf, group->start, group->end);
	FUNC3(&speakup_info.spinlock, flags);
	return retval;
}