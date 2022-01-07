
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wusbhc {int mutex; scalar_t__ active; } ;
struct whc {scalar_t__ base; int periodic_list_wq; struct wusbhc wusbhc; } ;


 scalar_t__ WUSBCMD ;
 int WUSBCMD_PERIODIC_UPDATED ;
 int le_readl (scalar_t__) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long wait_event_timeout (int ,int,int ) ;
 int whc_hw_error (struct whc*,char*) ;
 int whc_write_wusbcmd (struct whc*,int ,int ) ;

void pzl_update(struct whc *whc, uint32_t wusbcmd)
{
 struct wusbhc *wusbhc = &whc->wusbhc;
 long t;

 mutex_lock(&wusbhc->mutex);
 if (wusbhc->active) {
  whc_write_wusbcmd(whc, wusbcmd, wusbcmd);
  t = wait_event_timeout(
   whc->periodic_list_wq,
   (le_readl(whc->base + WUSBCMD) & WUSBCMD_PERIODIC_UPDATED) == 0,
   msecs_to_jiffies(1000));
  if (t == 0)
   whc_hw_error(whc, "PZL update timeout");
 }
 mutex_unlock(&wusbhc->mutex);
}
