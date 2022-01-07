
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusb_ckhdid {int dummy; } ;
struct wusbhc {int mutex; int * uwb_rc; int pal; TYPE_1__* dev; struct wusb_ckhdid chid; scalar_t__ active; } ;
struct TYPE_2__ {int parent; } ;


 int EBUSY ;
 int ENODEV ;
 int dev_err (TYPE_1__*,char*) ;
 scalar_t__ memcmp (struct wusb_ckhdid const*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_radio_start (int *) ;
 int uwb_radio_stop (int *) ;
 int * uwb_rc_get_by_grandpa (int ) ;
 int uwb_rc_put (int *) ;
 int wusb_ckhdid_zero ;
 int wusbhc_pal_register (struct wusbhc*) ;

int wusbhc_chid_set(struct wusbhc *wusbhc, const struct wusb_ckhdid *chid)
{
 int result = 0;

 if (memcmp(chid, &wusb_ckhdid_zero, sizeof(*chid)) == 0)
  chid = ((void*)0);

 mutex_lock(&wusbhc->mutex);
 if (chid) {
  if (wusbhc->active) {
   mutex_unlock(&wusbhc->mutex);
   return -EBUSY;
  }
  wusbhc->chid = *chid;
 }



 if ((chid) && (wusbhc->uwb_rc == ((void*)0))) {
  wusbhc->uwb_rc = uwb_rc_get_by_grandpa(wusbhc->dev->parent);
  if (wusbhc->uwb_rc == ((void*)0)) {
   result = -ENODEV;
   dev_err(wusbhc->dev,
    "Cannot get associated UWB Host Controller\n");
   goto error_rc_get;
  }

  result = wusbhc_pal_register(wusbhc);
  if (result < 0) {
   dev_err(wusbhc->dev, "Cannot register as a UWB PAL\n");
   goto error_pal_register;
  }
 }
 mutex_unlock(&wusbhc->mutex);

 if (chid)
  result = uwb_radio_start(&wusbhc->pal);
 else if (wusbhc->uwb_rc)
  uwb_radio_stop(&wusbhc->pal);

 return result;

error_pal_register:
 uwb_rc_put(wusbhc->uwb_rc);
 wusbhc->uwb_rc = ((void*)0);
error_rc_get:
 mutex_unlock(&wusbhc->mutex);

 return result;
}
