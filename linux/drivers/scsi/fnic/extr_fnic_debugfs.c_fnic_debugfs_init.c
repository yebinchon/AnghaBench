
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_trace_flag_type {int fc_normal_file; int fnic_trace; int fc_trace; int fc_clear; scalar_t__ fc_row_file; } ;


 void* debugfs_create_dir (char*,int *) ;
 struct fc_trace_flag_type* fc_trc_flag ;
 void* fnic_stats_debugfs_root ;
 int * fnic_trace_debugfs_root ;
 scalar_t__ vmalloc (int) ;

int fnic_debugfs_init(void)
{
 fnic_trace_debugfs_root = debugfs_create_dir("fnic", ((void*)0));

 fnic_stats_debugfs_root = debugfs_create_dir("statistics",
      fnic_trace_debugfs_root);


 fc_trc_flag = (struct fc_trace_flag_type *)
  vmalloc(sizeof(struct fc_trace_flag_type));

 if (fc_trc_flag) {
  fc_trc_flag->fc_row_file = 0;
  fc_trc_flag->fc_normal_file = 1;
  fc_trc_flag->fnic_trace = 2;
  fc_trc_flag->fc_trace = 3;
  fc_trc_flag->fc_clear = 4;
 }

 return 0;
}
