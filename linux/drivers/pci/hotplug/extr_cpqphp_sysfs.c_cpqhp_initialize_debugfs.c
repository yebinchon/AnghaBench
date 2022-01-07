
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debugfs_create_dir (char*,int *) ;
 scalar_t__ root ;

void cpqhp_initialize_debugfs(void)
{
 if (!root)
  root = debugfs_create_dir("cpqhp", ((void*)0));
}
