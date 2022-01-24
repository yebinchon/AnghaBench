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
struct w1_slave {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct w1_slave* FUNC0 (struct device*) ; 
 int FUNC1 (char*,char*,int) ; 
 int FUNC2 (struct w1_slave*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			     char *buf)
{
	struct w1_slave *sl = FUNC0(dev);
	int result;

	/* Read current speed from slave. Updates data->speed. */
	result = FUNC2(sl);
	if (result < 0)
		return result;

	/* Return current speed value. */
	return FUNC1(buf, "%d\n", result);
}