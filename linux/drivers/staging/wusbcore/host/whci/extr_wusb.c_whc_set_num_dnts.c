
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wusbhc {int dummy; } ;
struct whc {scalar_t__ base; } ;


 scalar_t__ WUSBDNTSCTRL ;
 int WUSBDNTSCTRL_ACTIVE ;
 int WUSBDNTSCTRL_INTERVAL (int ) ;
 int WUSBDNTSCTRL_SLOTS (int ) ;
 int le_writel (int,scalar_t__) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

int whc_set_num_dnts(struct wusbhc *wusbhc, u8 interval, u8 slots)
{
 struct whc *whc = wusbhc_to_whc(wusbhc);
 u32 dntsctrl;

 dntsctrl = WUSBDNTSCTRL_ACTIVE
  | WUSBDNTSCTRL_INTERVAL(interval)
  | WUSBDNTSCTRL_SLOTS(slots);

 le_writel(dntsctrl, whc->base + WUSBDNTSCTRL);

 return 0;
}
