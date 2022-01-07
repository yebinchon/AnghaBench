
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_trip {scalar_t__ type; int temperature; } ;
struct platform_device {int dev; } ;
struct hisi_thermal_sensor {int thres_temp; int * tzd; int id; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ THERMAL_TRIP_PASSIVE ;
 int dev_err (int *,char*,int ,int) ;
 int * devm_thermal_zone_of_sensor_register (int *,int ,struct hisi_thermal_sensor*,int *) ;
 int hisi_of_thermal_ops ;
 int of_thermal_get_ntrips (int *) ;
 struct thermal_trip* of_thermal_get_trip_points (int *) ;

__attribute__((used)) static int hisi_thermal_register_sensor(struct platform_device *pdev,
     struct hisi_thermal_sensor *sensor)
{
 int ret, i;
 const struct thermal_trip *trip;

 sensor->tzd = devm_thermal_zone_of_sensor_register(&pdev->dev,
          sensor->id, sensor,
          &hisi_of_thermal_ops);
 if (IS_ERR(sensor->tzd)) {
  ret = PTR_ERR(sensor->tzd);
  sensor->tzd = ((void*)0);
  dev_err(&pdev->dev, "failed to register sensor id %d: %d\n",
   sensor->id, ret);
  return ret;
 }

 trip = of_thermal_get_trip_points(sensor->tzd);

 for (i = 0; i < of_thermal_get_ntrips(sensor->tzd); i++) {
  if (trip[i].type == THERMAL_TRIP_PASSIVE) {
   sensor->thres_temp = trip[i].temperature;
   break;
  }
 }

 return 0;
}
