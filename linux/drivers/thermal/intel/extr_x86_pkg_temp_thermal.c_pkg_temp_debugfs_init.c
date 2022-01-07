
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IRUGO ;
 int debugfs ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_u32 (char*,int ,int ,int *) ;
 int pkg_interrupt_cnt ;
 int pkg_work_cnt ;

__attribute__((used)) static void pkg_temp_debugfs_init(void)
{
 debugfs = debugfs_create_dir("pkg_temp_thermal", ((void*)0));

 debugfs_create_u32("pkg_thres_interrupt", S_IRUGO, debugfs,
      &pkg_interrupt_cnt);
 debugfs_create_u32("pkg_thres_work", S_IRUGO, debugfs,
      &pkg_work_cnt);
}
