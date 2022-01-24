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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (char const*,int,unsigned int*) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	unsigned int id;
	int err;

	if (FUNC0(buf, 10, &id))
		return -EINVAL;
	err = FUNC1(id, 0);
	if (err < 0)
		return err;
	return count;
}