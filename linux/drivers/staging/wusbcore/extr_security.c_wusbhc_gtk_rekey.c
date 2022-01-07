
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int gtk_rekey_work; int wq_security; } ;


 int queue_work (int ,int *) ;

void wusbhc_gtk_rekey(struct wusbhc *wusbhc)
{







 queue_work(wusbhc->wq_security, &wusbhc->gtk_rekey_work);
}
