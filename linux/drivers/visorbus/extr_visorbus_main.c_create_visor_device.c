
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int release; int groups; int * bus; } ;
struct TYPE_8__ {int created; } ;
struct visor_device {TYPE_2__ device; TYPE_1__ state; int list_all; int timer; int visordriver_callback_lock; int chipset_dev_no; int chipset_bus_no; } ;


 int CONTROLVM_DEVICE_CREATE ;
 int channel_groups ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_periodic_work ;
 int dev_set_name (TYPE_2__*,char*,int ,int ) ;
 int device_add (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 int get_device (TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 int list_all_device_instances ;
 int mutex_init (int *) ;
 int put_device (TYPE_2__*) ;
 int timer_setup (int *,int ,int ) ;
 int visorbus_release_device ;
 int visorbus_response (struct visor_device*,int,int ) ;
 int visorbus_type ;

int create_visor_device(struct visor_device *dev)
{
 int err;
 u32 chipset_bus_no = dev->chipset_bus_no;
 u32 chipset_dev_no = dev->chipset_dev_no;

 mutex_init(&dev->visordriver_callback_lock);
 dev->device.bus = &visorbus_type;
 dev->device.groups = channel_groups;
 device_initialize(&dev->device);
 dev->device.release = visorbus_release_device;

 get_device(&dev->device);
 timer_setup(&dev->timer, dev_periodic_work, 0);





 err = dev_set_name(&dev->device, "vbus%u:dev%u",
      chipset_bus_no, chipset_dev_no);
 if (err)
  goto err_put;
 err = device_add(&dev->device);
 if (err < 0)
  goto err_put;
 list_add_tail(&dev->list_all, &list_all_device_instances);
 dev->state.created = 1;
 visorbus_response(dev, err, CONTROLVM_DEVICE_CREATE);

 return 0;

err_put:
 put_device(&dev->device);
 dev_err(&dev->device, "Creating visor device failed. %d\n", err);
 return err;
}
