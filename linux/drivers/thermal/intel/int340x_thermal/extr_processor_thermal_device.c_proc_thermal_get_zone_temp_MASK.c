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
struct thermal_zone_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int stored_tjmax ; 

__attribute__((used)) static int FUNC1(struct thermal_zone_device *zone,
					 int *temp)
{
	int ret;

	ret = FUNC0(temp);
	if (!ret)
		*temp = (stored_tjmax - *temp) * 1000;

	return ret;
}