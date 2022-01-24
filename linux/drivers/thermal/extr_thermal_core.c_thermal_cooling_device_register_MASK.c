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
struct thermal_cooling_device_ops {int dummy; } ;
struct thermal_cooling_device {int dummy; } ;

/* Variables and functions */
 struct thermal_cooling_device* FUNC0 (int /*<<< orphan*/ *,char const*,void*,struct thermal_cooling_device_ops const*) ; 

struct thermal_cooling_device *
FUNC1(const char *type, void *devdata,
				const struct thermal_cooling_device_ops *ops)
{
	return FUNC0(NULL, type, devdata, ops);
}