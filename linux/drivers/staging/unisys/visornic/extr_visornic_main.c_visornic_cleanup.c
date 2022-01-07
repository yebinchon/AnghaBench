
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int visorbus_unregister_visor_driver (int *) ;
 int visornic_debugfs_dir ;
 int visornic_driver ;

__attribute__((used)) static void visornic_cleanup(void)
{
 visorbus_unregister_visor_driver(&visornic_driver);
 debugfs_remove_recursive(visornic_debugfs_dir);
}
