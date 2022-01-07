
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {int * stats_host; int * reset_stats_file; int * stats_file; } ;


 int debugfs_remove (int *) ;

void
snic_stats_debugfs_remove(struct snic *snic)
{
 debugfs_remove(snic->stats_file);
 snic->stats_file = ((void*)0);

 debugfs_remove(snic->reset_stats_file);
 snic->reset_stats_file = ((void*)0);

 debugfs_remove(snic->stats_host);
 snic->stats_host = ((void*)0);
}
