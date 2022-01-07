
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_bus {int dev; } ;


 int device_for_each_child (int ,int *,int ) ;
 int sdw_bus_debugfs_exit (struct sdw_bus*) ;
 int sdw_delete_slave ;

void sdw_delete_bus_master(struct sdw_bus *bus)
{
 device_for_each_child(bus->dev, ((void*)0), sdw_delete_slave);

 sdw_bus_debugfs_exit(bus);
}
