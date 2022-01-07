
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct device_attribute {int dummy; } ;
struct TYPE_6__ {char* name; int mode; } ;
struct TYPE_7__ {int store; int show; TYPE_1__ attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 int S_IWUSR ;
 unsigned int device_create_file (int *,TYPE_2__*) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;
 TYPE_2__* lowbatt_handle ;
 int sony_nc_lowbatt_show ;
 int sony_nc_lowbatt_store ;
 int sysfs_attr_init (TYPE_1__*) ;

__attribute__((used)) static int sony_nc_lowbatt_setup(struct platform_device *pd)
{
 unsigned int result;

 lowbatt_handle = kzalloc(sizeof(struct device_attribute), GFP_KERNEL);
 if (!lowbatt_handle)
  return -ENOMEM;

 sysfs_attr_init(&lowbatt_handle->attr);
 lowbatt_handle->attr.name = "lowbatt_hibernate";
 lowbatt_handle->attr.mode = S_IRUGO | S_IWUSR;
 lowbatt_handle->show = sony_nc_lowbatt_show;
 lowbatt_handle->store = sony_nc_lowbatt_store;

 result = device_create_file(&pd->dev, lowbatt_handle);
 if (result) {
  kfree(lowbatt_handle);
  lowbatt_handle = ((void*)0);
  return result;
 }

 return 0;
}
