
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int (* start ) (struct wusbhc*) ;int active; int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wusbhc*) ;

__attribute__((used)) static int wusbhc_mmc_start(struct wusbhc *wusbhc)
{
 int ret;

 mutex_lock(&wusbhc->mutex);
 ret = wusbhc->start(wusbhc);
 if (ret >= 0)
  wusbhc->active = 1;
 mutex_unlock(&wusbhc->mutex);

 return ret;
}
