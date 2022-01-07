
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uuid_t ;
typedef int u32 ;
struct TYPE_5__ {int * bus; } ;
struct TYPE_4__ {int uuid; } ;
struct tee_client_device {TYPE_2__ dev; TYPE_1__ id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_register (TYPE_2__*) ;
 int kfree (struct tee_client_device*) ;
 struct tee_client_device* kzalloc (int,int ) ;
 int pr_err (char*,int) ;
 int tee_bus_type ;
 int uuid_copy (int *,int const*) ;

__attribute__((used)) static int optee_register_device(const uuid_t *device_uuid, u32 device_id)
{
 struct tee_client_device *optee_device = ((void*)0);
 int rc;

 optee_device = kzalloc(sizeof(*optee_device), GFP_KERNEL);
 if (!optee_device)
  return -ENOMEM;

 optee_device->dev.bus = &tee_bus_type;
 dev_set_name(&optee_device->dev, "optee-clnt%u", device_id);
 uuid_copy(&optee_device->id.uuid, device_uuid);

 rc = device_register(&optee_device->dev);
 if (rc) {
  pr_err("device registration failed, err: %d\n", rc);
  kfree(optee_device);
 }

 return rc;
}
