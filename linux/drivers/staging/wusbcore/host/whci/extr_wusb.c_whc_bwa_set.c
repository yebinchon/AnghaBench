
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct whc {int dummy; } ;
struct uwb_mas_bm {int dummy; } ;
typedef scalar_t__ s8 ;


 int WUSBCMD_WUSBSI (scalar_t__) ;
 int WUSBCMD_WUSBSI_MASK ;
 int WUSBGENCMDSTS_SET_MAS ;
 int whc_do_gencmd (struct whc*,int ,int ,void*,int) ;
 int whc_write_wusbcmd (struct whc*,int ,int ) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

int whc_bwa_set(struct wusbhc *wusbhc, s8 stream_index, const struct uwb_mas_bm *mas_bm)
{
 struct whc *whc = wusbhc_to_whc(wusbhc);

 if (stream_index >= 0)
  whc_write_wusbcmd(whc, WUSBCMD_WUSBSI_MASK, WUSBCMD_WUSBSI(stream_index));

 return whc_do_gencmd(whc, WUSBGENCMDSTS_SET_MAS, 0, (void *)mas_bm, sizeof(*mas_bm));
}
