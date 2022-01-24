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
struct mdev_type {int /*<<< orphan*/  kobj; int /*<<< orphan*/ * devices_kobj; TYPE_1__* group; } ;
struct attribute {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  attr; } ;
struct TYPE_3__ {scalar_t__ attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__ mdev_type_attr_create ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct attribute const**) ; 

__attribute__((used)) static void FUNC4(struct mdev_type *type)
{
	FUNC3(&type->kobj,
			   (const struct attribute **)type->group->attrs);
	FUNC1(type->devices_kobj);
	FUNC2(&type->kobj, &mdev_type_attr_create.attr);
	FUNC0(&type->kobj);
	FUNC1(&type->kobj);
}