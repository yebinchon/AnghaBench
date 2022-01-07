
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * trc_root; int * stats_root; } ;


 int debugfs_remove (int *) ;
 TYPE_1__* snic_glob ;

void
snic_debugfs_term(void)
{
 debugfs_remove(snic_glob->stats_root);
 snic_glob->stats_root = ((void*)0);

 debugfs_remove(snic_glob->trc_root);
 snic_glob->trc_root = ((void*)0);
}
