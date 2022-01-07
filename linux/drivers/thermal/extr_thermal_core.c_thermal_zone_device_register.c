
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct thermal_zone_params {int no_hwmon; int governor_name; } ;
struct thermal_zone_device_ops {scalar_t__ (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;scalar_t__ (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;} ;
struct TYPE_5__ {int * class; } ;
struct thermal_zone_device {int id; int trips; int passive_delay; int polling_delay; TYPE_1__ device; int need_update; int poll_queue; int node; struct thermal_zone_params* tzp; int trips_disabled; struct thermal_zone_device_ops* ops; void* devdata; int type; int lock; int ida; int thermal_instances; } ;
struct thermal_governor {int dummy; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;


 int EINVAL ;
 int ENOMEM ;
 struct thermal_zone_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int THERMAL_MAX_TRIPS ;
 scalar_t__ THERMAL_NAME_LENGTH ;
 struct thermal_governor* __find_governor (int ) ;
 scalar_t__ atomic_cmpxchg (int *,int,int ) ;
 int atomic_set (int *,int) ;
 int bind_tz (struct thermal_zone_device*) ;
 struct thermal_governor* def_governor ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_del (TYPE_1__*) ;
 int device_register (TYPE_1__*) ;
 int ida_init (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct thermal_zone_device*) ;
 struct thermal_zone_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 int put_device (TYPE_1__*) ;
 int set_bit (int,int *) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ stub1 (struct thermal_zone_device*,int,int*) ;
 scalar_t__ stub2 (struct thermal_zone_device*,int,int*) ;
 int thermal_add_hwmon_sysfs (struct thermal_zone_device*) ;
 int thermal_class ;
 int thermal_governor_lock ;
 int thermal_list_lock ;
 int thermal_set_governor (struct thermal_zone_device*,struct thermal_governor*) ;
 int thermal_tz_ida ;
 int thermal_tz_list ;
 int thermal_zone_create_device_groups (struct thermal_zone_device*,int) ;
 int thermal_zone_device_check ;
 int thermal_zone_device_reset (struct thermal_zone_device*) ;
 int thermal_zone_device_update (struct thermal_zone_device*,int ) ;

struct thermal_zone_device *
thermal_zone_device_register(const char *type, int trips, int mask,
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

 if (!type || strlen(type) == 0) {
  pr_err("Error: No thermal zone type defined\n");
  return ERR_PTR(-EINVAL);
 }

 if (type && strlen(type) >= THERMAL_NAME_LENGTH) {
  pr_err("Error: Thermal zone name (%s) too long, should be under %d chars\n",
         type, THERMAL_NAME_LENGTH);
  return ERR_PTR(-EINVAL);
 }

 if (trips > THERMAL_MAX_TRIPS || trips < 0 || mask >> trips) {
  pr_err("Error: Incorrect number of thermal trips\n");
  return ERR_PTR(-EINVAL);
 }

 if (!ops) {
  pr_err("Error: Thermal zone device ops not defined\n");
  return ERR_PTR(-EINVAL);
 }

 if (trips > 0 && (!ops->get_trip_type || !ops->get_trip_temp))
  return ERR_PTR(-EINVAL);

 tz = kzalloc(sizeof(*tz), GFP_KERNEL);
 if (!tz)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&tz->thermal_instances);
 ida_init(&tz->ida);
 mutex_init(&tz->lock);
 id = ida_simple_get(&thermal_tz_ida, 0, 0, GFP_KERNEL);
 if (id < 0) {
  result = id;
  goto free_tz;
 }

 tz->id = id;
 strlcpy(tz->type, type, sizeof(tz->type));
 tz->ops = ops;
 tz->tzp = tzp;
 tz->device.class = &thermal_class;
 tz->devdata = devdata;
 tz->trips = trips;
 tz->passive_delay = passive_delay;
 tz->polling_delay = polling_delay;



 result = thermal_zone_create_device_groups(tz, mask);
 if (result)
  goto remove_id;


 atomic_set(&tz->need_update, 1);

 dev_set_name(&tz->device, "thermal_zone%d", tz->id);
 result = device_register(&tz->device);
 if (result)
  goto release_device;

 for (count = 0; count < trips; count++) {
  if (tz->ops->get_trip_type(tz, count, &trip_type))
   set_bit(count, &tz->trips_disabled);
  if (tz->ops->get_trip_temp(tz, count, &trip_temp))
   set_bit(count, &tz->trips_disabled);

  if (trip_temp == 0)
   set_bit(count, &tz->trips_disabled);
 }


 mutex_lock(&thermal_governor_lock);

 if (tz->tzp)
  governor = __find_governor(tz->tzp->governor_name);
 else
  governor = def_governor;

 result = thermal_set_governor(tz, governor);
 if (result) {
  mutex_unlock(&thermal_governor_lock);
  goto unregister;
 }

 mutex_unlock(&thermal_governor_lock);

 if (!tz->tzp || !tz->tzp->no_hwmon) {
  result = thermal_add_hwmon_sysfs(tz);
  if (result)
   goto unregister;
 }

 mutex_lock(&thermal_list_lock);
 list_add_tail(&tz->node, &thermal_tz_list);
 mutex_unlock(&thermal_list_lock);


 bind_tz(tz);

 INIT_DELAYED_WORK(&tz->poll_queue, thermal_zone_device_check);

 thermal_zone_device_reset(tz);

 if (atomic_cmpxchg(&tz->need_update, 1, 0))
  thermal_zone_device_update(tz, THERMAL_EVENT_UNSPECIFIED);

 return tz;

unregister:
 device_del(&tz->device);
release_device:
 put_device(&tz->device);
 tz = ((void*)0);
remove_id:
 ida_simple_remove(&thermal_tz_ida, id);
free_tz:
 kfree(tz);
 return ERR_PTR(result);
}
