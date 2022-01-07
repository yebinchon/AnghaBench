
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int size; TYPE_2__* ap; } ;
struct ks_wlan_private {int scan_ind_count; int net_dev; TYPE_1__ aplist; scalar_t__ rxp; } ;
struct ap_info {scalar_t__ frame_type; int bssid; } ;
struct TYPE_4__ {int * bssid; } ;


 scalar_t__ IEEE80211_STYPE_PROBE_RESP ;
 int LOCAL_APLIST_MAX ;
 scalar_t__ ether_addr_equal (int ,int *) ;
 int get_ap_information (struct ks_wlan_private*,struct ap_info*,TYPE_2__*) ;
 int netdev_dbg (int ,char*,int,...) ;

__attribute__((used)) static
void hostif_scan_indication(struct ks_wlan_private *priv)
{
 int i;
 struct ap_info *ap_info;

 netdev_dbg(priv->net_dev,
     "scan_ind_count = %d\n", priv->scan_ind_count);
 ap_info = (struct ap_info *)(priv->rxp);

 if (priv->scan_ind_count) {

  for (i = 0; i < priv->aplist.size; i++) {
   u8 *bssid = priv->aplist.ap[i].bssid;

   if (ether_addr_equal(ap_info->bssid, bssid))
    continue;

   if (ap_info->frame_type == IEEE80211_STYPE_PROBE_RESP)
    get_ap_information(priv, ap_info,
         &priv->aplist.ap[i]);
   return;
  }
 }
 priv->scan_ind_count++;
 if (priv->scan_ind_count < LOCAL_APLIST_MAX + 1) {
  netdev_dbg(priv->net_dev, " scan_ind_count=%d :: aplist.size=%d\n",
      priv->scan_ind_count, priv->aplist.size);
  get_ap_information(priv, (struct ap_info *)(priv->rxp),
       &priv->aplist.ap[priv->scan_ind_count - 1]);
  priv->aplist.size = priv->scan_ind_count;
 } else {
  netdev_dbg(priv->net_dev, " count over :: scan_ind_count=%d\n",
      priv->scan_ind_count);
 }
}
