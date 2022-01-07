
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mfg_id; int part_id; } ;
struct sdw_slave {TYPE_1__ id; } ;


 int snprintf (char*,size_t,char*,int,int) ;

int sdw_slave_modalias(const struct sdw_slave *slave, char *buf, size_t size)
{


 return snprintf(buf, size, "sdw:m%04Xp%04X\n",
   slave->id.mfg_id, slave->id.part_id);
}
