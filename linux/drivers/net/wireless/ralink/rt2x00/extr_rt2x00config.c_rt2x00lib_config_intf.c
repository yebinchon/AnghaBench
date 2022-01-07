
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rt2x00intf_conf {int type; int bssid; int mac; int sync; } ;
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {TYPE_2__* ops; int intf_sta_count; int intf_ap_count; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* config_intf ) (struct rt2x00_dev*,struct rt2x00_intf*,struct rt2x00intf_conf*,unsigned int) ;} ;


 unsigned int CONFIG_UPDATE_BSSID ;
 unsigned int CONFIG_UPDATE_MAC ;
 unsigned int CONFIG_UPDATE_TYPE ;
 int ETH_ALEN ;





 int TSF_SYNC_ADHOC ;
 int TSF_SYNC_AP_NONE ;
 int TSF_SYNC_INFRA ;
 int TSF_SYNC_NONE ;
 int memcpy (int ,int const*,int ) ;
 int memset (int ,int ,int) ;
 int stub1 (struct rt2x00_dev*,struct rt2x00_intf*,struct rt2x00intf_conf*,unsigned int) ;

void rt2x00lib_config_intf(struct rt2x00_dev *rt2x00dev,
      struct rt2x00_intf *intf,
      enum nl80211_iftype type,
      const u8 *mac, const u8 *bssid)
{
 struct rt2x00intf_conf conf;
 unsigned int flags = 0;

 conf.type = type;

 switch (type) {
 case 132:
  conf.sync = TSF_SYNC_ADHOC;
  break;
 case 131:
 case 130:
 case 128:
  conf.sync = TSF_SYNC_AP_NONE;
  break;
 case 129:
  conf.sync = TSF_SYNC_INFRA;
  break;
 default:
  conf.sync = TSF_SYNC_NONE;
  break;
 }







 memset(conf.mac, 0, sizeof(conf.mac));
 if (mac)
  memcpy(conf.mac, mac, ETH_ALEN);

 memset(conf.bssid, 0, sizeof(conf.bssid));
 if (bssid)
  memcpy(conf.bssid, bssid, ETH_ALEN);

 flags |= CONFIG_UPDATE_TYPE;
 if (mac || (!rt2x00dev->intf_ap_count && !rt2x00dev->intf_sta_count))
  flags |= CONFIG_UPDATE_MAC;
 if (bssid || (!rt2x00dev->intf_ap_count && !rt2x00dev->intf_sta_count))
  flags |= CONFIG_UPDATE_BSSID;

 rt2x00dev->ops->lib->config_intf(rt2x00dev, intf, &conf, flags);
}
