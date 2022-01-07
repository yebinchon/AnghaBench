
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusbhc {int (* mmcie_add ) (struct wusbhc*,int ,int ,unsigned int,struct wuie_hdr*) ;int mmcie_mutex; struct wuie_hdr** mmcie; int mmcies_max; int dev; } ;
struct wuie_hdr {int bIEIdentifier; } ;


 int ENOBUFS ;
 int ENOSYS ;


 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wusbhc*,int ,int ,unsigned int,struct wuie_hdr*) ;

int wusbhc_mmcie_set(struct wusbhc *wusbhc, u8 interval, u8 repeat_cnt,
       struct wuie_hdr *wuie)
{
 int result = -ENOBUFS;
 unsigned handle, itr;


 mutex_lock(&wusbhc->mmcie_mutex);
 switch (wuie->bIEIdentifier) {
 case 129:

  handle = wusbhc->mmcies_max - 1;
  break;
 case 128:
  dev_err(wusbhc->dev, "Special ordering case for WUIE ID 0x%x "
   "unimplemented\n", wuie->bIEIdentifier);
  result = -ENOSYS;
  goto error_unlock;
 default:

  handle = ~0;
  for (itr = 0; itr < wusbhc->mmcies_max - 1; itr++) {
   if (wusbhc->mmcie[itr] == wuie) {
    handle = itr;
    break;
   }
   if (wusbhc->mmcie[itr] == ((void*)0))
    handle = itr;
  }
  if (handle == ~0)
   goto error_unlock;
 }
 result = (wusbhc->mmcie_add)(wusbhc, interval, repeat_cnt, handle,
         wuie);
 if (result >= 0)
  wusbhc->mmcie[handle] = wuie;
error_unlock:
 mutex_unlock(&wusbhc->mmcie_mutex);
 return result;
}
