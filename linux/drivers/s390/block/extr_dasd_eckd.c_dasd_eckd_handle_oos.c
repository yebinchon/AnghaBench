
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_oos_message {int code; } ;
struct dasd_device {TYPE_1__* discipline; TYPE_2__* cdev; } ;
typedef int __u8 ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* check_attention ) (struct dasd_device*,int ) ;} ;
 int dasd_eckd_oos_resume (struct dasd_device*) ;
 int dasd_eckd_read_ext_pool_info (struct dasd_device*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int stub1 (struct dasd_device*,int ) ;

__attribute__((used)) static void dasd_eckd_handle_oos(struct dasd_device *device, void *messages,
     __u8 lpum)
{
 struct dasd_oos_message *oos = messages;

 switch (oos->code) {
 case 128:
 case 131:
  dev_warn(&device->cdev->dev,
    "Extent pool usage has reached a critical value\n");
  dasd_eckd_oos_resume(device);
  break;
 case 130:
 case 133:
  dev_warn(&device->cdev->dev,
    "Extent pool is exhausted\n");
  break;
 case 129:
 case 132:
  dev_info(&device->cdev->dev,
    "Extent pool physical space constraint has been relieved\n");
  break;
 }


 dasd_eckd_read_ext_pool_info(device);


 device->discipline->check_attention(device, lpum);
}
