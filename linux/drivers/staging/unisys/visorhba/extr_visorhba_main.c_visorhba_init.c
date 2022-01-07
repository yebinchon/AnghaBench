
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_remove_recursive (int ) ;
 int visorbus_register_visor_driver (int *) ;
 int visorhba_debugfs_dir ;
 int visorhba_driver ;

__attribute__((used)) static int visorhba_init(void)
{
 int rc = -ENOMEM;

 visorhba_debugfs_dir = debugfs_create_dir("visorhba", ((void*)0));
 if (!visorhba_debugfs_dir)
  return -ENOMEM;

 rc = visorbus_register_visor_driver(&visorhba_driver);
 if (rc)
  goto cleanup_debugfs;

 return 0;

cleanup_debugfs:
 debugfs_remove_recursive(visorhba_debugfs_dir);

 return rc;
}
