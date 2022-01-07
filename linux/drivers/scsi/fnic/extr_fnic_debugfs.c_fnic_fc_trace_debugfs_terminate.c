
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int *) ;
 int * fnic_fc_rdata_trace_debugfs_file ;
 int * fnic_fc_trace_clear ;
 int * fnic_fc_trace_debugfs_file ;
 int * fnic_fc_trace_enable ;

void fnic_fc_trace_debugfs_terminate(void)
{
 debugfs_remove(fnic_fc_trace_debugfs_file);
 fnic_fc_trace_debugfs_file = ((void*)0);

 debugfs_remove(fnic_fc_rdata_trace_debugfs_file);
 fnic_fc_rdata_trace_debugfs_file = ((void*)0);

 debugfs_remove(fnic_fc_trace_enable);
 fnic_fc_trace_enable = ((void*)0);

 debugfs_remove(fnic_fc_trace_clear);
 fnic_fc_trace_clear = ((void*)0);
}
