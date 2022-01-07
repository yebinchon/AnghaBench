
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int ) ;
 int NUM_MINORS ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int ,char*) ;
 int cap_class ;
 int cap_dev_num ;
 int class_create (int ,char*) ;
 int class_destroy (int ) ;

int cap_init(void)
{
 int ret;

 cap_class = class_create(THIS_MODULE, "gb_authenticate");
 if (IS_ERR(cap_class))
  return PTR_ERR(cap_class);

 ret = alloc_chrdev_region(&cap_dev_num, 0, NUM_MINORS,
      "gb_authenticate");
 if (ret)
  goto err_remove_class;

 return 0;

err_remove_class:
 class_destroy(cap_class);
 return ret;
}
