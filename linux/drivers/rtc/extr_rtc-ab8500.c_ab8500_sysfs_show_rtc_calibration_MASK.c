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
 int FUNC0 (struct device*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	int  retval = 0;
	int  calibration = 0;

	retval = FUNC0(dev, &calibration);
	if (retval < 0) {
		FUNC1(dev, "Failed to read RTC calibration attribute\n");
		FUNC2(buf, "0\n");
		return retval;
	}

	return FUNC2(buf, "%d\n", calibration);
}