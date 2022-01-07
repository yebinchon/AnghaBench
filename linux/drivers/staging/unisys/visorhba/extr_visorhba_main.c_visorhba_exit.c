
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int visorbus_unregister_visor_driver (int *) ;
 int visorhba_debugfs_dir ;
 int visorhba_driver ;

__attribute__((used)) static void visorhba_exit(void)
{
 visorbus_unregister_visor_driver(&visorhba_driver);
 debugfs_remove_recursive(visorhba_debugfs_dir);
}
