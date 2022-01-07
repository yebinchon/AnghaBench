
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdw_slave_id {scalar_t__ unique_id; scalar_t__ mfg_id; scalar_t__ part_id; scalar_t__ class_id; } ;
struct TYPE_2__ {scalar_t__ unique_id; scalar_t__ mfg_id; scalar_t__ part_id; scalar_t__ class_id; } ;
struct sdw_slave {TYPE_1__ id; } ;


 int ENODEV ;

__attribute__((used)) static int sdw_compare_devid(struct sdw_slave *slave, struct sdw_slave_id id)
{
 if (slave->id.unique_id != id.unique_id ||
     slave->id.mfg_id != id.mfg_id ||
     slave->id.part_id != id.part_id ||
     slave->id.class_id != id.class_id)
  return -ENODEV;

 return 0;
}
