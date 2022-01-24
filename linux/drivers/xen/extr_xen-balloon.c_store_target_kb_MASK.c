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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EPERM ; 
 unsigned long long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf,
			       size_t count)
{
	char *endchar;
	unsigned long long target_bytes;

	if (!FUNC1(CAP_SYS_ADMIN))
		return -EPERM;

	target_bytes = FUNC2(buf, &endchar, 0) * 1024;

	FUNC0(target_bytes >> PAGE_SHIFT);

	return count;
}