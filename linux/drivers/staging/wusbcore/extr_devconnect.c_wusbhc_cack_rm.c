
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int cack_count; } ;
struct wusb_dev {int cack_node; } ;


 int list_del_init (int *) ;
 int wusbhc_fill_cack_ie (struct wusbhc*) ;

__attribute__((used)) static void wusbhc_cack_rm(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
 list_del_init(&wusb_dev->cack_node);
 wusbhc->cack_count--;
 wusbhc_fill_cack_ie(wusbhc);
}
