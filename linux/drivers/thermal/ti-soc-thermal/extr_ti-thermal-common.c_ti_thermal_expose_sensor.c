
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_thermal_data {int polling_delay; struct ti_thermal_data* ti_thermal; int sensor_id; } ;
struct ti_bandgap {int dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ti_thermal_data*) ;
 int PTR_ERR (struct ti_thermal_data*) ;
 int dev_err (int ,char*) ;
 struct ti_thermal_data* devm_thermal_zone_of_sensor_register (int ,int,struct ti_thermal_data*,int *) ;
 struct ti_thermal_data* ti_bandgap_get_sensor_data (struct ti_bandgap*,int) ;
 int ti_bandgap_set_sensor_data (struct ti_bandgap*,int,struct ti_thermal_data*) ;
 int ti_bandgap_write_update_interval (struct ti_bandgap*,int ,int ) ;
 int ti_of_thermal_ops ;
 struct ti_thermal_data* ti_thermal_build_data (struct ti_bandgap*,int) ;

int ti_thermal_expose_sensor(struct ti_bandgap *bgp, int id,
        char *domain)
{
 struct ti_thermal_data *data;

 data = ti_bandgap_get_sensor_data(bgp, id);

 if (!data || IS_ERR(data))
  data = ti_thermal_build_data(bgp, id);

 if (!data)
  return -EINVAL;


 data->ti_thermal = devm_thermal_zone_of_sensor_register(bgp->dev, id,
     data, &ti_of_thermal_ops);
 if (IS_ERR(data->ti_thermal)) {
  dev_err(bgp->dev, "thermal zone device is NULL\n");
  return PTR_ERR(data->ti_thermal);
 }

 ti_bandgap_set_sensor_data(bgp, id, data);
 ti_bandgap_write_update_interval(bgp, data->sensor_id,
     data->ti_thermal->polling_delay);

 return 0;
}
