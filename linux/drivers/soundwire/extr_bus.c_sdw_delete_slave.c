
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_slave {int node; scalar_t__ dev_num; struct sdw_bus* bus; } ;
struct sdw_bus {int bus_lock; int assigned; } ;
struct device {int dummy; } ;


 int clear_bit (scalar_t__,int ) ;
 struct sdw_slave* dev_to_sdw_dev (struct device*) ;
 int device_unregister (struct device*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdw_slave_debugfs_exit (struct sdw_slave*) ;

__attribute__((used)) static int sdw_delete_slave(struct device *dev, void *data)
{
 struct sdw_slave *slave = dev_to_sdw_dev(dev);
 struct sdw_bus *bus = slave->bus;

 sdw_slave_debugfs_exit(slave);

 mutex_lock(&bus->bus_lock);

 if (slave->dev_num)
  clear_bit(slave->dev_num, bus->assigned);

 list_del_init(&slave->node);
 mutex_unlock(&bus->bus_lock);

 device_unregister(dev);
 return 0;
}
