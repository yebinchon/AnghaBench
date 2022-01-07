
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int coreid; } ;
struct ssb_device {struct device* dev; struct device* dma_dev; int irq; TYPE_1__ id; } ;
struct TYPE_13__ {scalar_t__ present; } ;
struct TYPE_12__ {scalar_t__ present; } ;
struct TYPE_14__ {TYPE_6__ sflash; TYPE_5__ pflash; } ;
struct ssb_bus {int nr_devices; int bustype; TYPE_7__ mipscore; TYPE_4__* host_sdio; TYPE_3__* host_pcmcia; TYPE_2__* host_pci; int busnumber; struct ssb_device* devices; } ;
struct device {int coherent_dma_mask; int * dma_mask; struct device* parent; int * bus; int release; } ;
struct __ssb_dev_wrapper {struct ssb_device* sdev; struct device dev; } ;
struct TYPE_11__ {struct device dev; } ;
struct TYPE_10__ {struct device dev; int irq; } ;
struct TYPE_9__ {struct device dev; int irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_name (struct device*) ;
 int dev_set_name (struct device*,char*,int ,int) ;
 int device_register (struct device*) ;
 struct __ssb_dev_wrapper* kzalloc (int,int ) ;
 int platform_device_register (int *) ;
 int pr_err (char*,...) ;
 int put_device (struct device*) ;
 int ssb_bustype ;
 int ssb_devices_unregister (struct ssb_bus*) ;
 int ssb_pflash_dev ;
 int ssb_release_dev ;
 int ssb_sflash_dev ;

__attribute__((used)) static int ssb_devices_register(struct ssb_bus *bus)
{
 struct ssb_device *sdev;
 struct device *dev;
 struct __ssb_dev_wrapper *devwrap;
 int i, err = 0;
 int dev_idx = 0;

 for (i = 0; i < bus->nr_devices; i++) {
  sdev = &(bus->devices[i]);



  switch (sdev->id.coreid) {
  case 134:
  case 130:
  case 129:
  case 128:
  case 132:
  case 131:
  case 133:
   continue;
  }

  devwrap = kzalloc(sizeof(*devwrap), GFP_KERNEL);
  if (!devwrap) {
   err = -ENOMEM;
   goto error;
  }
  dev = &devwrap->dev;
  devwrap->sdev = sdev;

  dev->release = ssb_release_dev;
  dev->bus = &ssb_bustype;
  dev_set_name(dev, "ssb%u:%d", bus->busnumber, dev_idx);

  switch (bus->bustype) {
  case 138:





   break;
  case 137:




   break;
  case 136:



   break;
  case 135:
   dev->dma_mask = &dev->coherent_dma_mask;
   sdev->dma_dev = dev;
   break;
  }

  sdev->dev = dev;
  err = device_register(dev);
  if (err) {
   pr_err("Could not register %s\n", dev_name(dev));


   sdev->dev = ((void*)0);
   put_device(dev);
   goto error;
  }
  dev_idx++;
 }
 return 0;
error:

 ssb_devices_unregister(bus);
 return err;
}
