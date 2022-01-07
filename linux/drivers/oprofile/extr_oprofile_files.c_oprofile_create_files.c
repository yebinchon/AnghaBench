
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int (* create_files ) (struct dentry*) ;} ;


 int BUFFER_SIZE_DEFAULT ;
 int BUFFER_WATERSHED_DEFAULT ;
 int CPU_BUFFER_SIZE_DEFAULT ;
 int TIME_SLICE_DEFAULT ;
 int cpu_type_fops ;
 int depth_fops ;
 int dump_fops ;
 int enable_fops ;
 int event_buffer_fops ;
 int msecs_to_jiffies (int ) ;
 int oprofile_buffer_size ;
 int oprofile_buffer_watershed ;
 int oprofile_cpu_buffer_size ;
 int oprofile_create_stats_files (struct dentry*) ;
 TYPE_1__ oprofile_ops ;
 int oprofile_time_slice ;
 int oprofilefs_create_file (struct dentry*,char*,int *) ;
 int oprofilefs_create_file_perm (struct dentry*,char*,int *,int) ;
 int oprofilefs_create_ulong (struct dentry*,char*,int *) ;
 int pointer_size_fops ;
 int stub1 (struct dentry*) ;
 int timeout_fops ;

void oprofile_create_files(struct dentry *root)
{

 oprofile_buffer_size = BUFFER_SIZE_DEFAULT;
 oprofile_cpu_buffer_size = CPU_BUFFER_SIZE_DEFAULT;
 oprofile_buffer_watershed = BUFFER_WATERSHED_DEFAULT;
 oprofile_time_slice = msecs_to_jiffies(TIME_SLICE_DEFAULT);

 oprofilefs_create_file(root, "enable", &enable_fops);
 oprofilefs_create_file_perm(root, "dump", &dump_fops, 0666);
 oprofilefs_create_file(root, "buffer", &event_buffer_fops);
 oprofilefs_create_ulong(root, "buffer_size", &oprofile_buffer_size);
 oprofilefs_create_ulong(root, "buffer_watershed", &oprofile_buffer_watershed);
 oprofilefs_create_ulong(root, "cpu_buffer_size", &oprofile_cpu_buffer_size);
 oprofilefs_create_file(root, "cpu_type", &cpu_type_fops);
 oprofilefs_create_file(root, "backtrace_depth", &depth_fops);
 oprofilefs_create_file(root, "pointer_size", &pointer_size_fops);



 oprofile_create_stats_files(root);
 if (oprofile_ops.create_files)
  oprofile_ops.create_files(root);
}
