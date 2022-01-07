
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mfg_id; scalar_t__ part_id; } ;
struct sdw_slave {TYPE_1__ id; } ;
struct sdw_driver {struct sdw_device_id* id_table; } ;
struct sdw_device_id {scalar_t__ mfg_id; scalar_t__ part_id; } ;



__attribute__((used)) static const struct sdw_device_id *
sdw_get_device_id(struct sdw_slave *slave, struct sdw_driver *drv)
{
 const struct sdw_device_id *id = drv->id_table;

 while (id && id->mfg_id) {
  if (slave->id.mfg_id == id->mfg_id &&
      slave->id.part_id == id->part_id)
   return id;
  id++;
 }

 return ((void*)0);
}
