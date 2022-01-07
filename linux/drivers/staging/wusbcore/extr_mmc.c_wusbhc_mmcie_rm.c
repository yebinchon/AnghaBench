
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {unsigned int mmcies_max; int (* mmcie_rm ) (struct wusbhc*,unsigned int) ;int mmcie_mutex; struct wuie_hdr** mmcie; } ;
struct wuie_hdr {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wusbhc*,unsigned int) ;

void wusbhc_mmcie_rm(struct wusbhc *wusbhc, struct wuie_hdr *wuie)
{
 int result;
 unsigned handle, itr;

 mutex_lock(&wusbhc->mmcie_mutex);
 for (itr = 0; itr < wusbhc->mmcies_max; itr++) {
  if (wusbhc->mmcie[itr] == wuie) {
   handle = itr;
   goto found;
  }
 }
 mutex_unlock(&wusbhc->mmcie_mutex);
 return;

found:
 result = (wusbhc->mmcie_rm)(wusbhc, handle);
 if (result == 0)
  wusbhc->mmcie[itr] = ((void*)0);
 mutex_unlock(&wusbhc->mmcie_mutex);
}
