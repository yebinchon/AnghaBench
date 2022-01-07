
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;







 int RSI_OPMODE_AP ;
 int RSI_OPMODE_P2P_CLIENT ;
 int RSI_OPMODE_P2P_GO ;
 int RSI_OPMODE_STA ;
 int RSI_OPMODE_UNSUPPORTED ;

__attribute__((used)) static int rsi_map_intf_mode(enum nl80211_iftype vif_type)
{
 switch (vif_type) {
 case 128:
  return RSI_OPMODE_STA;
 case 132:
  return RSI_OPMODE_AP;
 case 130:
  return RSI_OPMODE_P2P_CLIENT;
 case 131:
  return RSI_OPMODE_P2P_CLIENT;
 case 129:
  return RSI_OPMODE_P2P_GO;
 default:
  return RSI_OPMODE_UNSUPPORTED;
 }
}
