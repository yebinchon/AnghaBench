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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_wmi {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_WMI_DEVID_THERMAL_CTRL ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct asus_wmi*,int /*<<< orphan*/ ,int*) ; 
 struct asus_wmi* FUNC2 (struct device*) ; 
 int FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr,
				char *buf)
{
	struct asus_wmi *asus = FUNC2(dev);
	u32 value;
	int err;

	err = FUNC1(asus, ASUS_WMI_DEVID_THERMAL_CTRL, &value);
	if (err < 0)
		return err;

	value = FUNC0((value & 0xFFFF)) * 1000;

	return FUNC3(buf, "%d\n", value);
}