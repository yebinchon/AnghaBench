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
struct toshiba_acpi_dev {int max_cooling_method; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct toshiba_acpi_dev* FUNC0 (struct device*) ; 
 int FUNC1 (char*,char*,int,int) ; 
 int FUNC2 (struct toshiba_acpi_dev*,int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct toshiba_acpi_dev *toshiba = FUNC0(dev);
	int state;
	int ret;

	ret = FUNC2(toshiba, &state);
	if (ret < 0)
		return ret;

	return FUNC1(buf, "%d %d\n", state, toshiba->max_cooling_method);
}