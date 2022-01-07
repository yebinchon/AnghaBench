
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wusbhc {int dummy; } ;
struct whc {int dummy; } ;


 int WUSBGENCMDSTS_MMCIE_RM ;
 int whc_do_gencmd (struct whc*,int ,int ,int *,int ) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

int whc_mmcie_rm(struct wusbhc *wusbhc, u8 handle)
{
 struct whc *whc = wusbhc_to_whc(wusbhc);
 u32 params;

 params = handle;

 return whc_do_gencmd(whc, WUSBGENCMDSTS_MMCIE_RM, params, ((void*)0), 0);
}
