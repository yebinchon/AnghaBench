
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmstorage_channel_properties {int dummy; } ;
struct vmbus_channel {size_t target_cpu; TYPE_1__* primary_channel; } ;
struct storvsc_device {int alloced_cpus; struct vmbus_channel** stor_chns; } ;
struct device {int dummy; } ;
struct hv_device {struct device device; } ;
struct TYPE_2__ {struct hv_device* device_obj; } ;


 int cpumask_set_cpu (size_t,int *) ;
 int dev_err (struct device*,char*,int) ;
 struct storvsc_device* get_out_stor_device (struct hv_device*) ;
 int memset (struct vmstorage_channel_properties*,int ,int) ;
 int storvsc_on_channel_callback ;
 int storvsc_ringbuffer_size ;
 int vmbus_open (struct vmbus_channel*,int ,int ,void*,int,int ,struct vmbus_channel*) ;

__attribute__((used)) static void handle_sc_creation(struct vmbus_channel *new_sc)
{
 struct hv_device *device = new_sc->primary_channel->device_obj;
 struct device *dev = &device->device;
 struct storvsc_device *stor_device;
 struct vmstorage_channel_properties props;
 int ret;

 stor_device = get_out_stor_device(device);
 if (!stor_device)
  return;

 memset(&props, 0, sizeof(struct vmstorage_channel_properties));

 ret = vmbus_open(new_sc,
    storvsc_ringbuffer_size,
    storvsc_ringbuffer_size,
    (void *)&props,
    sizeof(struct vmstorage_channel_properties),
    storvsc_on_channel_callback, new_sc);


 if (ret != 0) {
  dev_err(dev, "Failed to open sub-channel: err=%d\n", ret);
  return;
 }


 stor_device->stor_chns[new_sc->target_cpu] = new_sc;
 cpumask_set_cpu(new_sc->target_cpu, &stor_device->alloced_cpus);
}
