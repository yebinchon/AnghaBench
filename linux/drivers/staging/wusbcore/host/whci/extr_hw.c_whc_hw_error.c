
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {int dummy; } ;
struct whc {TYPE_1__* umc; struct wusbhc wusbhc; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,char const*) ;
 int wusbhc_reset_all (struct wusbhc*) ;

void whc_hw_error(struct whc *whc, const char *reason)
{
 struct wusbhc *wusbhc = &whc->wusbhc;

 dev_err(&whc->umc->dev, "hardware error: %s\n", reason);
 wusbhc_reset_all(wusbhc);
}
