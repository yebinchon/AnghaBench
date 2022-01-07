
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wlandevice {scalar_t__ msdstate; int (* mlmerequest ) (struct wlandevice*,struct p80211msg*) ;} ;
struct wiphy {int dummy; } ;
struct TYPE_6__ {int legacy; } ;
struct station_info {int filled; int signal; TYPE_2__ txrate; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_5__ {int status; int data; } ;
struct p80211msg_lnxreq_commsquality {TYPE_4__ level; TYPE_3__ txrate; TYPE_1__ dbm; int msgcode; } ;
struct p80211msg {int dummy; } ;
struct net_device {struct wlandevice* ml_priv; } ;


 int BIT_ULL (int ) ;
 int DIDMSG_LNXREQ_COMMSQUALITY ;
 int EOPNOTSUPP ;
 int NL80211_STA_INFO_SIGNAL ;
 int NL80211_STA_INFO_TX_BITRATE ;
 int P80211ENUM_msgitem_status_data_ok ;
 int P80211ENUM_truth_true ;
 scalar_t__ WLAN_MSD_RUNNING ;
 int memset (struct station_info*,int ,int) ;
 int stub1 (struct wlandevice*,struct p80211msg*) ;

__attribute__((used)) static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
         const u8 *mac, struct station_info *sinfo)
{
 struct wlandevice *wlandev = dev->ml_priv;
 struct p80211msg_lnxreq_commsquality quality;
 int result;

 memset(sinfo, 0, sizeof(*sinfo));

 if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
  return -EOPNOTSUPP;


 quality.msgcode = DIDMSG_LNXREQ_COMMSQUALITY;
 quality.dbm.data = P80211ENUM_truth_true;
 quality.dbm.status = P80211ENUM_msgitem_status_data_ok;


 if (!wlandev->mlmerequest)
  return -EOPNOTSUPP;

 result = wlandev->mlmerequest(wlandev, (struct p80211msg *)&quality);

 if (result == 0) {
  sinfo->txrate.legacy = quality.txrate.data;
  sinfo->filled |= BIT_ULL(NL80211_STA_INFO_TX_BITRATE);
  sinfo->signal = quality.level.data;
  sinfo->filled |= BIT_ULL(NL80211_STA_INFO_SIGNAL);
 }

 return result;
}
