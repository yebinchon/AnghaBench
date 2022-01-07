
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int qedi_dbg_root ;

void
qedi_dbg_init(char *drv_name)
{
 qedi_dbg_root = debugfs_create_dir(drv_name, ((void*)0));
}
