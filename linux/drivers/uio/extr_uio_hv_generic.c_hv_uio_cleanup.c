
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_uio_private_data {int recv_buf; scalar_t__ recv_gpadl; int send_buf; scalar_t__ send_gpadl; } ;
struct hv_device {int channel; } ;


 int vfree (int ) ;
 int vmbus_teardown_gpadl (int ,scalar_t__) ;

__attribute__((used)) static void
hv_uio_cleanup(struct hv_device *dev, struct hv_uio_private_data *pdata)
{
 if (pdata->send_gpadl) {
  vmbus_teardown_gpadl(dev->channel, pdata->send_gpadl);
  pdata->send_gpadl = 0;
  vfree(pdata->send_buf);
 }

 if (pdata->recv_gpadl) {
  vmbus_teardown_gpadl(dev->channel, pdata->recv_gpadl);
  pdata->recv_gpadl = 0;
  vfree(pdata->recv_buf);
 }
}
