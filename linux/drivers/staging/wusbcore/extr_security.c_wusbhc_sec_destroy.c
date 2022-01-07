
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int wq_security; } ;


 int destroy_workqueue (int ) ;

void wusbhc_sec_destroy(struct wusbhc *wusbhc)
{
 destroy_workqueue(wusbhc->wq_security);
}
