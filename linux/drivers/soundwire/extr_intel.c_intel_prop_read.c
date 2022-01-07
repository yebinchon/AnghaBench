
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_bus {int dummy; } ;


 int sdw_master_read_intel_prop (struct sdw_bus*) ;
 int sdw_master_read_prop (struct sdw_bus*) ;

__attribute__((used)) static int intel_prop_read(struct sdw_bus *bus)
{

 sdw_master_read_prop(bus);


 sdw_master_read_intel_prop(bus);

 return 0;
}
