
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wusbhc {int ports_max; TYPE_1__* wuie_host_info; int keep_alive_timer; int mutex; TYPE_2__* port; } ;
struct TYPE_4__ {scalar_t__ wusb_dev; } ;
struct TYPE_3__ {int hdr; } ;


 int __wusbhc_dev_disconnect (struct wusbhc*,TYPE_2__*) ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wusbhc_mmcie_rm (struct wusbhc*,int *) ;

void wusbhc_devconnect_stop(struct wusbhc *wusbhc)
{
 int i;

 mutex_lock(&wusbhc->mutex);
 for (i = 0; i < wusbhc->ports_max; i++) {
  if (wusbhc->port[i].wusb_dev)
   __wusbhc_dev_disconnect(wusbhc, &wusbhc->port[i]);
 }
 mutex_unlock(&wusbhc->mutex);

 cancel_delayed_work_sync(&wusbhc->keep_alive_timer);
 wusbhc_mmcie_rm(wusbhc, &wusbhc->wuie_host_info->hdr);
 kfree(wusbhc->wuie_host_info);
 wusbhc->wuie_host_info = ((void*)0);
}
