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
struct thermal_zone_device {int /*<<< orphan*/  type; int /*<<< orphan*/  device; } ;
struct thermal_cooling_device {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline
void FUNC1(struct thermal_zone_device *tz,
			struct thermal_cooling_device *cdev, int ret)
{
	FUNC0(&tz->device, "binding zone %s with cdev %s failed:%d\n",
		tz->type, cdev->type, ret);
}