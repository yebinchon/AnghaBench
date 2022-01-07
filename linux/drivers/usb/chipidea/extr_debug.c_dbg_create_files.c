
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int debugfs; int dev; } ;


 int S_IRUGO ;
 int S_IWUSR ;
 int ci_device_fops ;
 int ci_otg_fops ;
 scalar_t__ ci_otg_is_fsm_mode (struct ci_hdrc*) ;
 int ci_port_test_fops ;
 int ci_qheads_fops ;
 int ci_registers_fops ;
 int ci_requests_fops ;
 int ci_role_fops ;
 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,int ,struct ci_hdrc*,int *) ;
 int dev_name (int ) ;

void dbg_create_files(struct ci_hdrc *ci)
{
 ci->debugfs = debugfs_create_dir(dev_name(ci->dev), ((void*)0));

 debugfs_create_file("device", S_IRUGO, ci->debugfs, ci,
       &ci_device_fops);
 debugfs_create_file("port_test", S_IRUGO | S_IWUSR, ci->debugfs, ci,
       &ci_port_test_fops);
 debugfs_create_file("qheads", S_IRUGO, ci->debugfs, ci,
       &ci_qheads_fops);
 debugfs_create_file("requests", S_IRUGO, ci->debugfs, ci,
       &ci_requests_fops);

 if (ci_otg_is_fsm_mode(ci)) {
  debugfs_create_file("otg", S_IRUGO, ci->debugfs, ci,
        &ci_otg_fops);
 }

 debugfs_create_file("role", S_IRUGO | S_IWUSR, ci->debugfs, ci,
       &ci_role_fops);
 debugfs_create_file("registers", S_IRUGO, ci->debugfs, ci,
       &ci_registers_fops);
}
