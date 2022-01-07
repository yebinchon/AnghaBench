
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_vif {int dummy; } ;
struct rtw_dev {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;


 int rtw_vif_port_config (struct rtw_dev*,struct rtw_vif*,int ) ;

__attribute__((used)) static void rtw_restore_port_cfg_iter(void *data, u8 *mac,
          struct ieee80211_vif *vif)
{
 struct rtw_dev *rtwdev = data;
 struct rtw_vif *rtwvif = (struct rtw_vif *)vif->drv_priv;
 u32 config = ~0;

 rtw_vif_port_config(rtwdev, rtwvif, config);
}
