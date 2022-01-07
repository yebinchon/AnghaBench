
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_bus {int link_id; int debugfs; } ;
typedef int name ;


 int debugfs_create_dir (char*,int ) ;
 int sdw_debugfs_root ;
 int snprintf (char*,int,char*,int) ;

void sdw_bus_debugfs_init(struct sdw_bus *bus)
{
 char name[16];

 if (!sdw_debugfs_root)
  return;


 snprintf(name, sizeof(name), "master-%d", bus->link_id);
 bus->debugfs = debugfs_create_dir(name, sdw_debugfs_root);
}
