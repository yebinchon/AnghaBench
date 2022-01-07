
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmbus_channel {TYPE_1__* primary_channel; } ;
struct TYPE_4__ {scalar_t__ irq; } ;
struct hv_uio_private_data {TYPE_2__ info; } ;
struct hv_device {int dummy; } ;
struct TYPE_3__ {struct hv_device* device_obj; } ;


 struct hv_uio_private_data* hv_get_drvdata (struct hv_device*) ;
 int uio_event_notify (TYPE_2__*) ;

__attribute__((used)) static void hv_uio_rescind(struct vmbus_channel *channel)
{
 struct hv_device *hv_dev = channel->primary_channel->device_obj;
 struct hv_uio_private_data *pdata = hv_get_drvdata(hv_dev);





 pdata->info.irq = 0;


 uio_event_notify(&pdata->info);
}
