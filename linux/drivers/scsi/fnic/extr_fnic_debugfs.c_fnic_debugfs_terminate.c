
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int *) ;
 scalar_t__ fc_trc_flag ;
 int * fnic_stats_debugfs_root ;
 int * fnic_trace_debugfs_root ;
 int vfree (scalar_t__) ;

void fnic_debugfs_terminate(void)
{
 debugfs_remove(fnic_stats_debugfs_root);
 fnic_stats_debugfs_root = ((void*)0);

 debugfs_remove(fnic_trace_debugfs_root);
 fnic_trace_debugfs_root = ((void*)0);

 if (fc_trc_flag)
  vfree(fc_trc_flag);
}
