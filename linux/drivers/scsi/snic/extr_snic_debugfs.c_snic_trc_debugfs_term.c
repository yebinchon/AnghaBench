
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * trc_enable; int * trc_file; } ;
struct TYPE_4__ {TYPE_1__ trc; } ;


 int debugfs_remove (int *) ;
 TYPE_2__* snic_glob ;

void
snic_trc_debugfs_term(void)
{
 debugfs_remove(snic_glob->trc.trc_file);
 snic_glob->trc.trc_file = ((void*)0);

 debugfs_remove(snic_glob->trc.trc_enable);
 snic_glob->trc.trc_enable = ((void*)0);
}
