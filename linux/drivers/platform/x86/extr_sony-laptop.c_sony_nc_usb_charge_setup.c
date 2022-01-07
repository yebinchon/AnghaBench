
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct device_attribute {int dummy; } ;
struct TYPE_7__ {char* name; int mode; } ;
struct TYPE_6__ {int store; int show; TYPE_2__ attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 int S_IWUSR ;
 unsigned int device_create_file (int *,TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int pr_info (char*) ;
 scalar_t__ sony_call_snc_handle (int,int,unsigned int*) ;
 int sony_nc_usb_charge_show ;
 int sony_nc_usb_charge_store ;
 int sysfs_attr_init (TYPE_2__*) ;
 TYPE_1__* uc_handle ;

__attribute__((used)) static int sony_nc_usb_charge_setup(struct platform_device *pd)
{
 unsigned int result;

 if (sony_call_snc_handle(0x0155, 0x0000, &result) || !(result & 0x01)) {



  pr_info("No USB Charge capability found\n");
  return 0;
 }

 uc_handle = kzalloc(sizeof(struct device_attribute), GFP_KERNEL);
 if (!uc_handle)
  return -ENOMEM;

 sysfs_attr_init(&uc_handle->attr);
 uc_handle->attr.name = "usb_charge";
 uc_handle->attr.mode = S_IRUGO | S_IWUSR;
 uc_handle->show = sony_nc_usb_charge_show;
 uc_handle->store = sony_nc_usb_charge_store;

 result = device_create_file(&pd->dev, uc_handle);
 if (result) {
  kfree(uc_handle);
  uc_handle = ((void*)0);
  return result;
 }

 return 0;
}
