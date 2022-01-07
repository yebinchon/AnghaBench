
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IRUGO ;
 int cal_data ;
 int debug_dir ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int ,int ,int ,int *) ;
 int powerclamp_debug_fops ;

__attribute__((used)) static inline void powerclamp_create_debug_files(void)
{
 debug_dir = debugfs_create_dir("intel_powerclamp", ((void*)0));

 debugfs_create_file("powerclamp_calib", S_IRUGO, debug_dir, cal_data,
       &powerclamp_debug_fops);
}
