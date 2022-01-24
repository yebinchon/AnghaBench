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
typedef  int u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  MSR_PLATFORM_INFO ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int tcc_offset_save ; 
 int FUNC3 (int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, const char *buf,
				size_t count)
{
	u64 val;
	int tcc, err;

	err = FUNC2(MSR_PLATFORM_INFO, &val);
	if (err)
		return err;

	if (!(val & FUNC0(30)))
		return -EACCES;

	if (FUNC1(buf, 0, &tcc))
		return -EINVAL;

	err = FUNC3(tcc);
	if (err)
		return err;

	tcc_offset_save = tcc;

	return count;
}