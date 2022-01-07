
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int * fnic_stats_debugfs_host; int * fnic_reset_debugfs_file; int * fnic_stats_debugfs_file; } ;


 int debugfs_remove (int *) ;

void fnic_stats_debugfs_remove(struct fnic *fnic)
{
 if (!fnic)
  return;

 debugfs_remove(fnic->fnic_stats_debugfs_file);
 fnic->fnic_stats_debugfs_file = ((void*)0);

 debugfs_remove(fnic->fnic_reset_debugfs_file);
 fnic->fnic_reset_debugfs_file = ((void*)0);

 debugfs_remove(fnic->fnic_stats_debugfs_host);
 fnic->fnic_stats_debugfs_host = ((void*)0);
}
