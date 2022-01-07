
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
 TYPE_2__* hsc_handle ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;
 int pr_info (char*) ;
 scalar_t__ sony_call_snc_handle (int,int,unsigned int*) ;
 int sony_nc_highspeed_charging_show ;
 int sony_nc_highspeed_charging_store ;
 int sysfs_attr_init (TYPE_1__*) ;

__attribute__((used)) static int sony_nc_highspeed_charging_setup(struct platform_device *pd)
{
 unsigned int result;

 if (sony_call_snc_handle(0x0131, 0x0000, &result) || !(result & 0x01)) {



  pr_info("No High Speed Charging capability found\n");
  return 0;
 }

 hsc_handle = kzalloc(sizeof(struct device_attribute), GFP_KERNEL);
 if (!hsc_handle)
  return -ENOMEM;

 sysfs_attr_init(&hsc_handle->attr);
 hsc_handle->attr.name = "battery_highspeed_charging";
 hsc_handle->attr.mode = S_IRUGO | S_IWUSR;
 hsc_handle->show = sony_nc_highspeed_charging_show;
 hsc_handle->store = sony_nc_highspeed_charging_store;

 result = device_create_file(&pd->dev, hsc_handle);
 if (result) {
  kfree(hsc_handle);
  hsc_handle = ((void*)0);
  return result;
 }

 return 0;
}
