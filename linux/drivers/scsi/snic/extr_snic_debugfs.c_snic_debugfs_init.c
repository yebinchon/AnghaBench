
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * trc_root; void* stats_root; } ;


 void* debugfs_create_dir (char*,int *) ;
 TYPE_1__* snic_glob ;

void snic_debugfs_init(void)
{
 snic_glob->trc_root = debugfs_create_dir("snic", ((void*)0));

 snic_glob->stats_root = debugfs_create_dir("statistics",
         snic_glob->trc_root);
}
