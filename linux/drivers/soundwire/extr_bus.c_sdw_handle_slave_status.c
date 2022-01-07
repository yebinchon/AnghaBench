
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdw_slave {int const status; TYPE_1__* bus; } ;
struct sdw_bus {int dev; int bus_lock; int assigned; } ;
typedef enum sdw_slave_status { ____Placeholder_sdw_slave_status } sdw_slave_status ;
struct TYPE_2__ {int dev; } ;


 int SDW_MAX_DEVICES ;



 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sdw_slave* sdw_get_slave (struct sdw_bus*,int) ;
 int sdw_handle_slave_alerts (struct sdw_slave*) ;
 int sdw_initialize_slave (struct sdw_slave*) ;
 int sdw_modify_slave_status (struct sdw_slave*,int const) ;
 int sdw_program_device_num (struct sdw_bus*) ;
 int sdw_update_slave_status (struct sdw_slave*,int) ;
 int test_bit (int,int ) ;

int sdw_handle_slave_status(struct sdw_bus *bus,
       enum sdw_slave_status status[])
{
 enum sdw_slave_status prev_status;
 struct sdw_slave *slave;
 int i, ret = 0;

 if (status[0] == 129) {
  dev_dbg(bus->dev, "Slave attached, programming device number\n");
  ret = sdw_program_device_num(bus);
  if (ret)
   dev_err(bus->dev, "Slave attach failed: %d\n", ret);




  return ret;
 }


 for (i = 1; i <= SDW_MAX_DEVICES; i++) {
  mutex_lock(&bus->bus_lock);
  if (test_bit(i, bus->assigned) == 0) {
   mutex_unlock(&bus->bus_lock);
   continue;
  }
  mutex_unlock(&bus->bus_lock);

  slave = sdw_get_slave(bus, i);
  if (!slave)
   continue;

  switch (status[i]) {
  case 128:
   if (slave->status == 128)
    break;

   sdw_modify_slave_status(slave, 128);
   break;

  case 130:
   ret = sdw_handle_slave_alerts(slave);
   if (ret)
    dev_err(bus->dev,
     "Slave %d alert handling failed: %d\n",
     i, ret);
   break;

  case 129:
   if (slave->status == 129)
    break;

   prev_status = slave->status;
   sdw_modify_slave_status(slave, 129);

   if (prev_status == 130)
    break;

   ret = sdw_initialize_slave(slave);
   if (ret)
    dev_err(bus->dev,
     "Slave %d initialization failed: %d\n",
     i, ret);

   break;

  default:
   dev_err(bus->dev, "Invalid slave %d status:%d\n",
    i, status[i]);
   break;
  }

  ret = sdw_update_slave_status(slave, status[i]);
  if (ret)
   dev_err(slave->bus->dev,
    "Update Slave status failed:%d\n", ret);
 }

 return ret;
}
