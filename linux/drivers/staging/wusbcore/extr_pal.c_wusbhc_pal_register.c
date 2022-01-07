
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* name; int channel_changed; int rc; int device; } ;
struct TYPE_5__ {int controller; } ;
struct TYPE_6__ {TYPE_1__ self; } ;
struct wusbhc {TYPE_3__ pal; int uwb_rc; TYPE_2__ usb_hcd; } ;


 int uwb_pal_init (TYPE_3__*) ;
 int uwb_pal_register (TYPE_3__*) ;
 int wusbhc_channel_changed ;

int wusbhc_pal_register(struct wusbhc *wusbhc)
{
 uwb_pal_init(&wusbhc->pal);

 wusbhc->pal.name = "wusbhc";
 wusbhc->pal.device = wusbhc->usb_hcd.self.controller;
 wusbhc->pal.rc = wusbhc->uwb_rc;
 wusbhc->pal.channel_changed = wusbhc_channel_changed;

 return uwb_pal_register(&wusbhc->pal);
}
