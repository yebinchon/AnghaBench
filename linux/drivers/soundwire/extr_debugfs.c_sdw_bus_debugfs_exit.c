
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_bus {int debugfs; } ;


 int debugfs_remove_recursive (int ) ;

void sdw_bus_debugfs_exit(struct sdw_bus *bus)
{
 debugfs_remove_recursive(bus->debugfs);
}
