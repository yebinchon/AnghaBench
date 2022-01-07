
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; scalar_t__ silence; scalar_t__ signal; int rate; int time; int frame_control; int data_len; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;
union hfa384x_usbin {TYPE_3__ rxfrm; } ;
typedef int u16 ;
struct wlandevice {int hostwep; int netdev; struct hfa384x* priv; } ;
struct sk_buff {int dev; scalar_t__ data; } ;
struct p80211_rxmeta {scalar_t__ noise; scalar_t__ signal; int rxrate; int mactime; } ;
struct hfa384x_rx_frame {int dummy; } ;
struct hfa384x {TYPE_1__* wlandev; scalar_t__ dbmadjust; } ;
struct TYPE_4__ {int netdev; } ;


 int HFA384x_RXSTATUS_ISFCSERR (int ) ;
 int HFA384x_RXSTATUS_MACPORT_GET (int ) ;
 int HOSTWEP_EXCLUDEUNENCRYPTED ;
 int WLAN_CRC_LEN ;
 int WLAN_GET_FC_ISWEP (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int hfa384x_int_rxmonitor (struct wlandevice*,TYPE_3__*) ;
 int le16_to_cpu (int ) ;
 int le16_to_cpus (int *) ;
 int le32_to_cpus (int *) ;
 int memmove (int ,int *,int) ;
 int memset (int ,int,int ) ;
 int netdev_warn (int ,char*,int) ;
 int p80211_headerlen (int ) ;
 int p80211netdev_rx (struct wlandevice*,struct sk_buff*) ;
 struct p80211_rxmeta* p80211skb_rxmeta (struct sk_buff*) ;
 int p80211skb_rxmeta_attach (struct wlandevice*,struct sk_buff*) ;
 int pr_debug (char*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
{
 union hfa384x_usbin *usbin = (union hfa384x_usbin *)skb->data;
 struct hfa384x *hw = wlandev->priv;
 int hdrlen;
 struct p80211_rxmeta *rxmeta;
 u16 data_len;
 u16 fc;


 le16_to_cpus(&usbin->rxfrm.desc.status);
 le32_to_cpus(&usbin->rxfrm.desc.time);


 switch (HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status)) {
 case 0:
  fc = le16_to_cpu(usbin->rxfrm.desc.frame_control);


  if ((wlandev->hostwep & HOSTWEP_EXCLUDEUNENCRYPTED) &&
      !WLAN_GET_FC_ISWEP(fc)) {
   break;
  }

  data_len = le16_to_cpu(usbin->rxfrm.desc.data_len);


  hdrlen = p80211_headerlen(fc);


  skb_pull(skb, sizeof(struct hfa384x_rx_frame));




  memmove(skb_push(skb, hdrlen),
   &usbin->rxfrm.desc.frame_control, hdrlen);

  skb->dev = wlandev->netdev;


  skb_trim(skb, data_len + hdrlen);


  memset(skb_put(skb, WLAN_CRC_LEN), 0xff, WLAN_CRC_LEN);

  skb_reset_mac_header(skb);


  p80211skb_rxmeta_attach(wlandev, skb);
  rxmeta = p80211skb_rxmeta(skb);
  rxmeta->mactime = usbin->rxfrm.desc.time;
  rxmeta->rxrate = usbin->rxfrm.desc.rate;
  rxmeta->signal = usbin->rxfrm.desc.signal - hw->dbmadjust;
  rxmeta->noise = usbin->rxfrm.desc.silence - hw->dbmadjust;

  p80211netdev_rx(wlandev, skb);

  break;

 case 7:
  if (!HFA384x_RXSTATUS_ISFCSERR(usbin->rxfrm.desc.status)) {

   hfa384x_int_rxmonitor(wlandev, &usbin->rxfrm);
   dev_kfree_skb(skb);
  } else {
   pr_debug("Received monitor frame: FCSerr set\n");
  }
  break;

 default:
  netdev_warn(hw->wlandev->netdev, "Received frame on unsupported port=%d\n",
       HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
  break;
 }
}
