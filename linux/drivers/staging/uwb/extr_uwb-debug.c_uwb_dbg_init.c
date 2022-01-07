
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int root_dir ;

void uwb_dbg_init(void)
{
 root_dir = debugfs_create_dir("uwb", ((void*)0));
}
