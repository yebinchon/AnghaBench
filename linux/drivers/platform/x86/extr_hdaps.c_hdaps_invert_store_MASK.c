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
 size_t EINVAL ; 
 int HDAPS_BOTH_AXES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int hdaps_invert ; 
 int FUNC1 (char const*,char*,int*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	int invert;

	if (FUNC1(buf, "%d", &invert) != 1 ||
	    invert < 0 || invert > HDAPS_BOTH_AXES)
		return -EINVAL;

	hdaps_invert = invert;
	FUNC0();

	return count;
}