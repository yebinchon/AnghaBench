
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bLength; int bIEIdentifier; } ;
struct TYPE_8__ {TYPE_3__ hdr; } ;
struct TYPE_5__ {int bLength; int bIEIdentifier; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
struct wusbhc {int cack_list; TYPE_4__ cack_ie; int keep_alive_timer; TYPE_2__ keep_alive_ie; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int WUIE_ID_CONNECTACK ;
 int WUIE_ID_KEEP_ALIVE ;
 int wusbhc_keep_alive_run ;

int wusbhc_devconnect_create(struct wusbhc *wusbhc)
{
 wusbhc->keep_alive_ie.hdr.bIEIdentifier = WUIE_ID_KEEP_ALIVE;
 wusbhc->keep_alive_ie.hdr.bLength = sizeof(wusbhc->keep_alive_ie.hdr);
 INIT_DELAYED_WORK(&wusbhc->keep_alive_timer, wusbhc_keep_alive_run);

 wusbhc->cack_ie.hdr.bIEIdentifier = WUIE_ID_CONNECTACK;
 wusbhc->cack_ie.hdr.bLength = sizeof(wusbhc->cack_ie.hdr);
 INIT_LIST_HEAD(&wusbhc->cack_list);

 return 0;
}
