
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int IS_ERR_OR_NULL (int ) ;
 int cdev_del (int *) ;
 int class_destroy (int ) ;
 int device_destroy (int ,int ) ;
 TYPE_1__ hmcdrv_dev ;
 int hmcdrv_dev_class ;
 int hmcdrv_dev_no ;
 int misc_deregister (int *) ;
 int unregister_chrdev_region (int ,int) ;

void hmcdrv_dev_exit(void)
{
 misc_deregister(&hmcdrv_dev.dev);

}
