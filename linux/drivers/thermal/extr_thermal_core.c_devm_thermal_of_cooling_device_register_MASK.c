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
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct thermal_cooling_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct thermal_cooling_device*) ; 
 struct thermal_cooling_device* FUNC2 (struct device_node*,char*,void*,struct thermal_cooling_device_ops const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct thermal_cooling_device**) ; 
 struct thermal_cooling_device** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thermal_cooling_device**) ; 
 int /*<<< orphan*/  thermal_cooling_device_release ; 

struct thermal_cooling_device *
FUNC6(struct device *dev,
				struct device_node *np,
				char *type, void *devdata,
				const struct thermal_cooling_device_ops *ops)
{
	struct thermal_cooling_device **ptr, *tcd;

	ptr = FUNC4(thermal_cooling_device_release, sizeof(*ptr),
			   GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	tcd = FUNC2(np, type, devdata, ops);
	if (FUNC1(tcd)) {
		FUNC5(ptr);
		return tcd;
	}

	*ptr = tcd;
	FUNC3(dev, ptr);

	return tcd;
}