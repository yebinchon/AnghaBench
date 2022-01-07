
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storvsc_device {int destroy; struct storvsc_device* stor_chns; } ;
struct hv_device {int channel; } ;


 struct storvsc_device* hv_get_drvdata (struct hv_device*) ;
 int hv_set_drvdata (struct hv_device*,int *) ;
 int kfree (struct storvsc_device*) ;
 int storvsc_wait_to_drain (struct storvsc_device*) ;
 int vmbus_close (int ) ;
 int wmb () ;

__attribute__((used)) static int storvsc_dev_remove(struct hv_device *device)
{
 struct storvsc_device *stor_device;

 stor_device = hv_get_drvdata(device);

 stor_device->destroy = 1;


 wmb();







 storvsc_wait_to_drain(stor_device);
 hv_set_drvdata(device, ((void*)0));


 vmbus_close(device->channel);

 kfree(stor_device->stor_chns);
 kfree(stor_device);
 return 0;
}
