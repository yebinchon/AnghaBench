
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_trip {int temperature; int hysteresis; struct device_node* np; int type; } ;
struct device_node {int dummy; } ;


 int of_node_get (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int pr_err (char*) ;
 int thermal_of_get_trip_type (struct device_node*,int *) ;

__attribute__((used)) static int thermal_of_populate_trip(struct device_node *np,
        struct thermal_trip *trip)
{
 int prop;
 int ret;

 ret = of_property_read_u32(np, "temperature", &prop);
 if (ret < 0) {
  pr_err("missing temperature property\n");
  return ret;
 }
 trip->temperature = prop;

 ret = of_property_read_u32(np, "hysteresis", &prop);
 if (ret < 0) {
  pr_err("missing hysteresis property\n");
  return ret;
 }
 trip->hysteresis = prop;

 ret = thermal_of_get_trip_type(np, &trip->type);
 if (ret < 0) {
  pr_err("wrong trip type property\n");
  return ret;
 }


 trip->np = np;
 of_node_get(np);

 return 0;
}
