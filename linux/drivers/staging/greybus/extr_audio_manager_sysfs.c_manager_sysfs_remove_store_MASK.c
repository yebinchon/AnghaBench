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
 int FUNC0 (int) ; 
 int FUNC1 (char const*,int,int*) ; 

__attribute__((used)) static ssize_t FUNC2(struct kobject *kobj,
					  struct kobj_attribute *attr,
					  const char *buf, size_t count)
{
	int id;

	int num = FUNC1(buf, 10, &id);

	if (num != 1)
		return -EINVAL;

	num = FUNC0(id);
	if (num)
		return num;

	return count;
}