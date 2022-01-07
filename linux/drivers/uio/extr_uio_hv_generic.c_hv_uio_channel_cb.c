
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ring_buffer; } ;
struct vmbus_channel {TYPE_2__ inbound; struct hv_device* device_obj; } ;
struct hv_uio_private_data {int info; } ;
struct hv_device {int dummy; } ;
struct TYPE_3__ {int interrupt_mask; } ;


 struct hv_uio_private_data* hv_get_drvdata (struct hv_device*) ;
 int uio_event_notify (int *) ;
 int virt_mb () ;

__attribute__((used)) static void hv_uio_channel_cb(void *context)
{
 struct vmbus_channel *chan = context;
 struct hv_device *hv_dev = chan->device_obj;
 struct hv_uio_private_data *pdata = hv_get_drvdata(hv_dev);

 chan->inbound.ring_buffer->interrupt_mask = 1;
 virt_mb();

 uio_event_notify(&pdata->info);
}
