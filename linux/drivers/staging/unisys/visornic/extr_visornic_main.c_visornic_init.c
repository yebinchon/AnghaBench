
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 int debugfs_enable_ints_fops ;
 int debugfs_info_fops ;
 int debugfs_remove_recursive (int ) ;
 int visorbus_register_visor_driver (int *) ;
 int visornic_debugfs_dir ;
 int visornic_driver ;

__attribute__((used)) static int visornic_init(void)
{
 int err;

 visornic_debugfs_dir = debugfs_create_dir("visornic", ((void*)0));

 debugfs_create_file("info", 0400, visornic_debugfs_dir, ((void*)0),
       &debugfs_info_fops);
 debugfs_create_file("enable_ints", 0200, visornic_debugfs_dir, ((void*)0),
       &debugfs_enable_ints_fops);

 err = visorbus_register_visor_driver(&visornic_driver);
 if (err)
  debugfs_remove_recursive(visornic_debugfs_dir);

 return err;
}
