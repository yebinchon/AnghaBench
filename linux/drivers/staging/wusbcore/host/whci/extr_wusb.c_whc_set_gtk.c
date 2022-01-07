
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wusbhc {int dummy; } ;
struct whc {int mutex; int n_devices; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int whc_set_key (struct whc*,int ,int ,void const*,size_t,int) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

int whc_set_gtk(struct wusbhc *wusbhc, u32 tkid,
  const void *gtk, size_t key_size)
{
 struct whc *whc = wusbhc_to_whc(wusbhc);
 int ret;

 mutex_lock(&whc->mutex);

 ret = whc_set_key(whc, whc->n_devices, tkid, gtk, key_size, 1);

 mutex_unlock(&whc->mutex);

 return ret;
}
