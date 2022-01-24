#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct thermal_zone_params {int /*<<< orphan*/  no_hwmon; int /*<<< orphan*/  governor_name; } ;
struct thermal_zone_device_ops {scalar_t__ (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;scalar_t__ (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * class; } ;
struct thermal_zone_device {int id; int trips; int passive_delay; int polling_delay; TYPE_1__ device; int /*<<< orphan*/  need_update; int /*<<< orphan*/  poll_queue; int /*<<< orphan*/  node; struct thermal_zone_params* tzp; int /*<<< orphan*/  trips_disabled; struct thermal_zone_device_ops* ops; void* devdata; int /*<<< orphan*/  type; int /*<<< orphan*/  lock; int /*<<< orphan*/  ida; int /*<<< orphan*/  thermal_instances; } ;
struct thermal_governor {int dummy; } ;
typedef  enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct thermal_zone_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THERMAL_EVENT_UNSPECIFIED ; 
 int THERMAL_MAX_TRIPS ; 
 scalar_t__ THERMAL_NAME_LENGTH ; 
 struct thermal_governor* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct thermal_zone_device*) ; 
 struct thermal_governor* def_governor ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct thermal_zone_device*) ; 
 struct thermal_zone_device* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC23 (char const*) ; 
 scalar_t__ FUNC24 (struct thermal_zone_device*,int,int*) ; 
 scalar_t__ FUNC25 (struct thermal_zone_device*,int,int*) ; 
 int FUNC26 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  thermal_class ; 
 int /*<<< orphan*/  thermal_governor_lock ; 
 int /*<<< orphan*/  thermal_list_lock ; 
 int FUNC27 (struct thermal_zone_device*,struct thermal_governor*) ; 
 int /*<<< orphan*/  thermal_tz_ida ; 
 int /*<<< orphan*/  thermal_tz_list ; 
 int FUNC28 (struct thermal_zone_device*,int) ; 
 int /*<<< orphan*/  thermal_zone_device_check ; 
 int /*<<< orphan*/  FUNC29 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct thermal_zone_device*,int /*<<< orphan*/ ) ; 

struct thermal_zone_device *
FUNC31(const char *type, int trips, int mask,
			     void *devdata, struct thermal_zone_device_ops *ops,
			     struct thermal_zone_params *tzp, int passive_delay,
			     int polling_delay)
{
	struct thermal_zone_device *tz;
	enum thermal_trip_type trip_type;
	int trip_temp;
	int id;
	int result;
	int count;
	struct thermal_governor *governor;

	if (!type || FUNC23(type) == 0) {
		FUNC19("Error: No thermal zone type defined\n");
		return FUNC0(-EINVAL);
	}

	if (type && FUNC23(type) >= THERMAL_NAME_LENGTH) {
		FUNC19("Error: Thermal zone name (%s) too long, should be under %d chars\n",
		       type, THERMAL_NAME_LENGTH);
		return FUNC0(-EINVAL);
	}

	if (trips > THERMAL_MAX_TRIPS || trips < 0 || mask >> trips) {
		FUNC19("Error: Incorrect number of thermal trips\n");
		return FUNC0(-EINVAL);
	}

	if (!ops) {
		FUNC19("Error: Thermal zone device ops not defined\n");
		return FUNC0(-EINVAL);
	}

	if (trips > 0 && (!ops->get_trip_type || !ops->get_trip_temp))
		return FUNC0(-EINVAL);

	tz = FUNC14(sizeof(*tz), GFP_KERNEL);
	if (!tz)
		return FUNC0(-ENOMEM);

	FUNC2(&tz->thermal_instances);
	FUNC10(&tz->ida);
	FUNC16(&tz->lock);
	id = FUNC11(&thermal_tz_ida, 0, 0, GFP_KERNEL);
	if (id < 0) {
		result = id;
		goto free_tz;
	}

	tz->id = id;
	FUNC22(tz->type, type, sizeof(tz->type));
	tz->ops = ops;
	tz->tzp = tzp;
	tz->device.class = &thermal_class;
	tz->devdata = devdata;
	tz->trips = trips;
	tz->passive_delay = passive_delay;
	tz->polling_delay = polling_delay;

	/* sys I/F */
	/* Add nodes that are always present via .groups */
	result = FUNC28(tz, mask);
	if (result)
		goto remove_id;

	/* A new thermal zone needs to be updated anyway. */
	FUNC5(&tz->need_update, 1);

	FUNC7(&tz->device, "thermal_zone%d", tz->id);
	result = FUNC9(&tz->device);
	if (result)
		goto release_device;

	for (count = 0; count < trips; count++) {
		if (tz->ops->get_trip_type(tz, count, &trip_type))
			FUNC21(count, &tz->trips_disabled);
		if (tz->ops->get_trip_temp(tz, count, &trip_temp))
			FUNC21(count, &tz->trips_disabled);
		/* Check for bogus trip points */
		if (trip_temp == 0)
			FUNC21(count, &tz->trips_disabled);
	}

	/* Update 'this' zone's governor information */
	FUNC17(&thermal_governor_lock);

	if (tz->tzp)
		governor = FUNC3(tz->tzp->governor_name);
	else
		governor = def_governor;

	result = FUNC27(tz, governor);
	if (result) {
		FUNC18(&thermal_governor_lock);
		goto unregister;
	}

	FUNC18(&thermal_governor_lock);

	if (!tz->tzp || !tz->tzp->no_hwmon) {
		result = FUNC26(tz);
		if (result)
			goto unregister;
	}

	FUNC17(&thermal_list_lock);
	FUNC15(&tz->node, &thermal_tz_list);
	FUNC18(&thermal_list_lock);

	/* Bind cooling devices for this zone */
	FUNC6(tz);

	FUNC1(&tz->poll_queue, thermal_zone_device_check);

	FUNC29(tz);
	/* Update the new thermal zone and mark it as already updated. */
	if (FUNC4(&tz->need_update, 1, 0))
		FUNC30(tz, THERMAL_EVENT_UNSPECIFIED);

	return tz;

unregister:
	FUNC8(&tz->device);
release_device:
	FUNC20(&tz->device);
	tz = NULL;
remove_id:
	FUNC12(&thermal_tz_ida, id);
free_tz:
	FUNC13(tz);
	return FUNC0(result);
}