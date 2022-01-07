
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;


 int DEFAULT_SLOT_TIME ;
 int RTS_THRESHOLD_DEF ;
 int wl1251_acx_group_address_tbl (struct wl1251*,int,int *,int ) ;
 int wl1251_acx_pd_threshold (struct wl1251*) ;
 int wl1251_acx_rts_threshold (struct wl1251*,int ) ;
 int wl1251_acx_service_period_timeout (struct wl1251*) ;
 int wl1251_acx_slot (struct wl1251*,int ) ;

int wl1251_hw_init_phy_config(struct wl1251 *wl)
{
 int ret;

 ret = wl1251_acx_pd_threshold(wl);
 if (ret < 0)
  return ret;

 ret = wl1251_acx_slot(wl, DEFAULT_SLOT_TIME);
 if (ret < 0)
  return ret;

 ret = wl1251_acx_group_address_tbl(wl, 1, ((void*)0), 0);
 if (ret < 0)
  return ret;

 ret = wl1251_acx_service_period_timeout(wl);
 if (ret < 0)
  return ret;

 ret = wl1251_acx_rts_threshold(wl, RTS_THRESHOLD_DEF);
 if (ret < 0)
  return ret;

 return 0;
}
