
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct rsi_common {int hw_data_qs_blocked; int min_rate; int wow_flags; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
typedef enum opmode { ____Placeholder_opmode } opmode ;


 int RSI_OPMODE_STA ;
 int RSI_WOW_ENABLED ;
 int STA_CONNECTED ;
 int STA_DISCONNECTED ;
 int WLAN_CAPABILITY_PRIVACY ;
 int rsi_hal_send_sta_notify_frame (struct rsi_common*,int,int ,scalar_t__ const*,scalar_t__,int,int,struct ieee80211_vif*) ;
 int rsi_send_auto_rate_request (struct rsi_common*,struct ieee80211_sta*,int,struct ieee80211_vif*) ;
 int rsi_send_block_unblock_frame (struct rsi_common*,int) ;

void rsi_inform_bss_status(struct rsi_common *common,
      enum opmode opmode,
      u8 status,
      const u8 *addr,
      u8 qos_enable,
      u16 aid,
      struct ieee80211_sta *sta,
      u16 sta_id,
      u16 assoc_cap,
      struct ieee80211_vif *vif)
{
 if (status) {
  if (opmode == RSI_OPMODE_STA)
   common->hw_data_qs_blocked = 1;
  rsi_hal_send_sta_notify_frame(common,
           opmode,
           STA_CONNECTED,
           addr,
           qos_enable,
           aid, sta_id,
           vif);
  if (common->min_rate == 0xffff)
   rsi_send_auto_rate_request(common, sta, sta_id, vif);
  if (opmode == RSI_OPMODE_STA &&
      !(assoc_cap & WLAN_CAPABILITY_PRIVACY) &&
      !rsi_send_block_unblock_frame(common, 0))
   common->hw_data_qs_blocked = 0;
 } else {
  if (opmode == RSI_OPMODE_STA)
   common->hw_data_qs_blocked = 1;

  if (!(common->wow_flags & RSI_WOW_ENABLED))
   rsi_hal_send_sta_notify_frame(common, opmode,
            STA_DISCONNECTED, addr,
            qos_enable, aid, sta_id,
            vif);
  if (opmode == RSI_OPMODE_STA)
   rsi_send_block_unblock_frame(common, 1);
 }
}
