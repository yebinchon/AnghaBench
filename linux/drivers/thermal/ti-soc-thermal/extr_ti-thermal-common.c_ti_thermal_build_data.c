
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_thermal_data {int sensor_id; int thermal_wq; int pcb_tz; int mode; struct ti_bandgap* bgp; } ;
struct ti_bandgap {int dev; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int THERMAL_DEVICE_ENABLED ;
 int dev_err (int ,char*) ;
 struct ti_thermal_data* devm_kzalloc (int ,int,int ) ;
 int thermal_zone_get_zone_by_name (char*) ;
 int ti_thermal_work ;

__attribute__((used)) static struct ti_thermal_data
*ti_thermal_build_data(struct ti_bandgap *bgp, int id)
{
 struct ti_thermal_data *data;

 data = devm_kzalloc(bgp->dev, sizeof(*data), GFP_KERNEL);
 if (!data) {
  dev_err(bgp->dev, "kzalloc fail\n");
  return ((void*)0);
 }
 data->sensor_id = id;
 data->bgp = bgp;
 data->mode = THERMAL_DEVICE_ENABLED;

 data->pcb_tz = thermal_zone_get_zone_by_name("pcb");
 INIT_WORK(&data->thermal_wq, ti_thermal_work);

 return data;
}
