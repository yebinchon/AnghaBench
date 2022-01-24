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
typedef  int /*<<< orphan*/  u16 ;
struct gb_vibrator_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct gb_vibrator_device* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int FUNC3 (struct gb_vibrator_device*) ; 
 int FUNC4 (struct gb_vibrator_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct gb_vibrator_device *vib = FUNC1(dev);
	unsigned long val;
	int retval;

	retval = FUNC2(buf, 10, &val);
	if (retval < 0) {
		FUNC0(dev, "could not parse timeout value %d\n", retval);
		return retval;
	}

	if (val)
		retval = FUNC4(vib, (u16)val);
	else
		retval = FUNC3(vib);
	if (retval)
		return retval;

	return count;
}