
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fnic_trace; } ;


 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 void* debugfs_create_file (char*,int,int ,int *,int *) ;
 TYPE_1__* fc_trc_flag ;
 int fnic_trace_ctrl_fops ;
 void* fnic_trace_debugfs_file ;
 int fnic_trace_debugfs_fops ;
 int fnic_trace_debugfs_root ;
 void* fnic_trace_enable ;

void fnic_trace_debugfs_init(void)
{
 fnic_trace_enable = debugfs_create_file("tracing_enable",
     S_IFREG|S_IRUGO|S_IWUSR,
     fnic_trace_debugfs_root,
     &(fc_trc_flag->fnic_trace),
     &fnic_trace_ctrl_fops);

 fnic_trace_debugfs_file = debugfs_create_file("trace",
     S_IFREG|S_IRUGO|S_IWUSR,
     fnic_trace_debugfs_root,
     &(fc_trc_flag->fnic_trace),
     &fnic_trace_debugfs_fops);
}
