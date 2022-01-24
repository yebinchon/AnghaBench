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
struct max8998_rtc_info {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct max8998_rtc_info* FUNC0 (struct device*) ; 
 int FUNC1 (struct max8998_rtc_info*) ; 
 int FUNC2 (struct max8998_rtc_info*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
					unsigned int enabled)
{
	struct max8998_rtc_info *info = FUNC0(dev);

	if (enabled)
		return FUNC1(info);
	else
		return FUNC2(info);
}