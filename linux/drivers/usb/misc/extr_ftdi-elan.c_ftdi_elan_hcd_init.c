
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * dma_mask; int release; int * parent; TYPE_1__* platform_data; } ;
struct TYPE_8__ {char* name; TYPE_2__ dev; int num_resources; int resource; int id; } ;
struct TYPE_5__ {int potpg; int * reset; } ;
struct usb_ftdi {char* device_name; TYPE_4__ platform_dev; TYPE_3__* udev; TYPE_1__ platform_data; int resources; int sequence_num; } ;
struct TYPE_7__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int EBUSY ;
 int dev_info (int *,char*,char*) ;
 int ftdi_elan_get_kref (struct usb_ftdi*) ;
 int ftdi_release_platform_dev ;
 int platform_device_register (TYPE_4__*) ;
 int request_module (char*) ;
 int snprintf (char*,int,char*) ;

__attribute__((used)) static int ftdi_elan_hcd_init(struct usb_ftdi *ftdi)
{
 if (ftdi->platform_dev.dev.parent)
  return -EBUSY;

 ftdi_elan_get_kref(ftdi);
 ftdi->platform_data.potpg = 100;
 ftdi->platform_data.reset = ((void*)0);
 ftdi->platform_dev.id = ftdi->sequence_num;
 ftdi->platform_dev.resource = ftdi->resources;
 ftdi->platform_dev.num_resources = ARRAY_SIZE(ftdi->resources);
 ftdi->platform_dev.dev.platform_data = &ftdi->platform_data;
 ftdi->platform_dev.dev.parent = ((void*)0);
 ftdi->platform_dev.dev.release = ftdi_release_platform_dev;
 ftdi->platform_dev.dev.dma_mask = ((void*)0);
 snprintf(ftdi->device_name, sizeof(ftdi->device_name), "u132_hcd");
 ftdi->platform_dev.name = ftdi->device_name;
 dev_info(&ftdi->udev->dev, "requesting module '%s'\n", "u132_hcd");
 request_module("u132_hcd");
 dev_info(&ftdi->udev->dev, "registering '%s'\n",
   ftdi->platform_dev.name);

 return platform_device_register(&ftdi->platform_dev);
}
