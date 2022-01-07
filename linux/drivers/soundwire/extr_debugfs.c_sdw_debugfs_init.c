
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int sdw_debugfs_root ;

void sdw_debugfs_init(void)
{
 sdw_debugfs_root = debugfs_create_dir("soundwire", ((void*)0));
}
