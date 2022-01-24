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
typedef  enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;

/* Variables and functions */
 int EINVAL ; 
 int THERMAL_TRIP_CRITICAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct device* FUNC1 (struct rcar_thermal_priv*) ; 
 struct rcar_thermal_priv* FUNC2 (struct thermal_zone_device*) ; 

__attribute__((used)) static int FUNC3(struct thermal_zone_device *zone,
				      int trip, enum thermal_trip_type *type)
{
	struct rcar_thermal_priv *priv = FUNC2(zone);
	struct device *dev = FUNC1(priv);

	/* see rcar_thermal_get_temp() */
	switch (trip) {
	case 0: /* +90 <= temp */
		*type = THERMAL_TRIP_CRITICAL;
		break;
	default:
		FUNC0(dev, "rcar driver trip error\n");
		return -EINVAL;
	}

	return 0;
}