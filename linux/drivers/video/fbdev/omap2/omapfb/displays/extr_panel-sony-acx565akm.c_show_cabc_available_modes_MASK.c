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
struct panel_drv_data {int /*<<< orphan*/  has_cabc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int PAGE_SIZE ; 
 char** cabc_modes ; 
 struct panel_drv_data* FUNC1 (struct device*) ; 
 int FUNC2 (char*,int,char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr,
		char *buf)
{
	struct panel_drv_data *ddata = FUNC1(dev);
	int len;
	int i;

	if (!ddata->has_cabc)
		return FUNC2(buf, PAGE_SIZE, "%s\n", cabc_modes[0]);

	for (i = 0, len = 0;
	     len < PAGE_SIZE && i < FUNC0(cabc_modes); i++)
		len += FUNC2(&buf[len], PAGE_SIZE - len, "%s%s%s",
			i ? " " : "", cabc_modes[i],
			i == FUNC0(cabc_modes) - 1 ? "\n" : "");

	return len < PAGE_SIZE ? len : PAGE_SIZE - 1;
}