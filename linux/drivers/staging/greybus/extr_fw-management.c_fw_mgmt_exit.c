
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_MINORS ;
 int class_destroy (int ) ;
 int fw_mgmt_class ;
 int fw_mgmt_dev_num ;
 int fw_mgmt_minors_map ;
 int ida_destroy (int *) ;
 int unregister_chrdev_region (int ,int ) ;

void fw_mgmt_exit(void)
{
 unregister_chrdev_region(fw_mgmt_dev_num, NUM_MINORS);
 class_destroy(fw_mgmt_class);
 ida_destroy(&fw_mgmt_minors_map);
}
