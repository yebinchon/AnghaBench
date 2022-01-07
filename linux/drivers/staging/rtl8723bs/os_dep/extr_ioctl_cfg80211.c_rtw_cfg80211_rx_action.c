
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct adapter {int dummy; } ;
typedef int s32 ;


 int DBG_8192C (char*,int) ;
 int DBG_871X (char*,char const*,...) ;
 int GFP_ATOMIC ;
 int NL80211_BAND_2GHZ ;
 int rtw_action_frame_parse (int *,int ,int *,int *) ;
 int rtw_cfg80211_rx_mgmt (struct adapter*,int ,int ,int *,int ,int ) ;
 int rtw_get_oper_ch (struct adapter*) ;
 int rtw_ieee80211_channel_to_frequency (int,int ) ;

void rtw_cfg80211_rx_action(struct adapter *adapter, u8 *frame, uint frame_len, const char*msg)
{
 s32 freq;
 int channel;
 u8 category, action;

 channel = rtw_get_oper_ch(adapter);

 rtw_action_frame_parse(frame, frame_len, &category, &action);

 DBG_8192C("RTW_Rx:cur_ch =%d\n", channel);
 if (msg)
  DBG_871X("RTW_Rx:%s\n", msg);
 else
  DBG_871X("RTW_Rx:category(%u), action(%u)\n", category, action);

 freq = rtw_ieee80211_channel_to_frequency(channel, NL80211_BAND_2GHZ);

 rtw_cfg80211_rx_mgmt(adapter, freq, 0, frame, frame_len, GFP_ATOMIC);
}
