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
struct mdev_type_attribute {int /*<<< orphan*/  (* show ) (struct kobject*,int /*<<< orphan*/ ,char*) ;} ;
struct mdev_type {TYPE_1__* parent; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct kobject*,int /*<<< orphan*/ ,char*) ; 
 struct mdev_type* FUNC1 (struct kobject*) ; 
 struct mdev_type_attribute* FUNC2 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
				     struct attribute *__attr, char *buf)
{
	struct mdev_type_attribute *attr = FUNC2(__attr);
	struct mdev_type *type = FUNC1(kobj);
	ssize_t ret = -EIO;

	if (attr->show)
		ret = attr->show(kobj, type->parent->dev, buf);
	return ret;
}