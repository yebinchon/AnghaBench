
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int ) ;
 int NUM_MINORS ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int ,char*) ;
 int class_create (int ,char*) ;
 int class_destroy (int ) ;
 int fw_mgmt_class ;
 int fw_mgmt_dev_num ;

int fw_mgmt_init(void)
{
 int ret;

 fw_mgmt_class = class_create(THIS_MODULE, "gb_fw_mgmt");
 if (IS_ERR(fw_mgmt_class))
  return PTR_ERR(fw_mgmt_class);

 ret = alloc_chrdev_region(&fw_mgmt_dev_num, 0, NUM_MINORS,
      "gb_fw_mgmt");
 if (ret)
  goto err_remove_class;

 return 0;

err_remove_class:
 class_destroy(fw_mgmt_class);
 return ret;
}
