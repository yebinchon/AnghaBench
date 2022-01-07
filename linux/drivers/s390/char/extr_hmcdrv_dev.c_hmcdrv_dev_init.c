
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {int devnode; } ;
struct TYPE_6__ {scalar_t__ mode; int * fops; int name; int minor; int owner; } ;
struct TYPE_7__ {TYPE_1__ dev; scalar_t__ mode; } ;


 int HMCDRV_DEV_CLASS ;
 int HMCDRV_DEV_NAME ;
 scalar_t__ IS_ERR (struct device*) ;
 int MISC_DYNAMIC_MINOR ;
 int PTR_ERR (struct device*) ;
 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int,int ) ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_del (TYPE_1__*) ;
 int cdev_init (TYPE_1__*,int *) ;
 struct device* class_create (int ,int ) ;
 int class_destroy (struct device*) ;
 struct device* device_create (struct device*,int *,int ,int *,char*,int ) ;
 TYPE_2__ hmcdrv_dev ;
 struct device* hmcdrv_dev_class ;
 int hmcdrv_dev_fops ;
 int hmcdrv_dev_name ;
 int hmcdrv_dev_no ;
 int misc_register (TYPE_1__*) ;
 int unregister_chrdev_region (int ,int) ;

int hmcdrv_dev_init(void)
{
 int rc;
 hmcdrv_dev.dev.minor = MISC_DYNAMIC_MINOR;
 hmcdrv_dev.dev.name = HMCDRV_DEV_NAME;
 hmcdrv_dev.dev.fops = &hmcdrv_dev_fops;
 hmcdrv_dev.dev.mode = 0;
 rc = misc_register(&hmcdrv_dev.dev);


 return rc;
}
