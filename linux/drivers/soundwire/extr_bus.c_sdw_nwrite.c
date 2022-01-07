
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sdw_slave {TYPE_1__* bus; int dev_num; } ;
struct sdw_msg {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int SDW_MSG_FLAG_WRITE ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int sdw_fill_msg (struct sdw_msg*,struct sdw_slave*,int ,size_t,int ,int ,int *) ;
 int sdw_transfer (TYPE_1__*,struct sdw_msg*) ;

int sdw_nwrite(struct sdw_slave *slave, u32 addr, size_t count, u8 *val)
{
 struct sdw_msg msg;
 int ret;

 ret = sdw_fill_msg(&msg, slave, addr, count,
      slave->dev_num, SDW_MSG_FLAG_WRITE, val);
 if (ret < 0)
  return ret;

 ret = pm_runtime_get_sync(slave->bus->dev);
 if (ret < 0)
  return ret;

 ret = sdw_transfer(slave->bus, &msg);
 pm_runtime_put(slave->bus->dev);

 return ret;
}
