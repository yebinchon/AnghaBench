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
struct rcar_thermal_priv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct rcar_thermal_priv*) ; 
 struct rcar_thermal_priv* FUNC3 (struct thermal_zone_device*) ; 

__attribute__((used)) static int FUNC4(struct thermal_zone_device *zone,
				      int trip, int *temp)
{
	struct rcar_thermal_priv *priv = FUNC3(zone);
	struct device *dev = FUNC2(priv);

	/* see rcar_thermal_get_temp() */
	switch (trip) {
	case 0: /* +90 <= temp */
		*temp = FUNC0(90);
		break;
	default:
		FUNC1(dev, "rcar driver trip error\n");
		return -EINVAL;
	}

	return 0;
}