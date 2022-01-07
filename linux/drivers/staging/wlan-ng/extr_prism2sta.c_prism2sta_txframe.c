
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fc; } ;
union p80211_hdr {TYPE_1__ a3; } ;
struct wlandevice {int hostwep; struct hfa384x* priv; } ;
struct sk_buff {int dummy; } ;
struct p80211_metawep {int dummy; } ;
struct hfa384x {int dummy; } ;


 int HOSTWEP_ENCRYPT ;
 int HOSTWEP_PRIVACYINVOKED ;
 int WLAN_SET_FC_ISWEP (int) ;
 int cpu_to_le16 (int ) ;
 int hfa384x_drvr_txframe (struct hfa384x*,struct sk_buff*,union p80211_hdr*,struct p80211_metawep*) ;

__attribute__((used)) static int prism2sta_txframe(struct wlandevice *wlandev, struct sk_buff *skb,
        union p80211_hdr *p80211_hdr,
        struct p80211_metawep *p80211_wep)
{
 struct hfa384x *hw = wlandev->priv;


 if ((wlandev->hostwep & (HOSTWEP_PRIVACYINVOKED | HOSTWEP_ENCRYPT)) ==
     HOSTWEP_PRIVACYINVOKED) {
  p80211_hdr->a3.fc |= cpu_to_le16(WLAN_SET_FC_ISWEP(1));
 }

 return hfa384x_drvr_txframe(hw, skb, p80211_hdr, p80211_wep);
}
