
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * a4; int * a3; } ;
struct TYPE_5__ {int * a2; int * a3; int * a1; int fc; } ;
union p80211_hdr {TYPE_2__ a4; TYPE_1__ a3; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_7__ {int decrypt; int decrypt_err; } ;
struct wlandevice {int hostwep; scalar_t__ spy_number; TYPE_3__ rx; struct net_device* netdev; } ;
struct wlan_snap {void* type; int oui; } ;
struct wlan_llc {int dsap; int ssap; int ctl; } ;
struct wlan_ethhdr {void* type; int * saddr; int * daddr; } ;
struct sk_buff {unsigned int len; int protocol; scalar_t__ data; } ;
struct net_device {unsigned int mtu; } ;
struct TYPE_8__ {int h_source; } ;


 int ETH_ALEN ;
 unsigned int ETH_HLEN ;
 int HOSTWEP_DECRYPT ;
 int HOSTWEP_PRIVACYINVOKED ;
 unsigned int WLAN_CRC_LEN ;
 scalar_t__ WLAN_ETHCONV_8021h ;
 int WLAN_GET_FC_FROMDS (int ) ;
 scalar_t__ WLAN_GET_FC_ISWEP (int ) ;
 int WLAN_GET_FC_TODS (int ) ;
 unsigned int WLAN_HDR_A3_LEN ;
 unsigned int WLAN_HDR_A4_LEN ;
 int WLAN_IEEE_OUI_LEN ;
 int be16_to_cpu (void*) ;
 TYPE_4__* eth_hdr (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ether_addr_copy (int *,int *) ;
 int ether_addr_equal_unaligned (int *,int *) ;
 void* htons (unsigned int) ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int netdev_err (struct net_device*,char*,...) ;
 int orinoco_spy_gather (struct wlandevice*,int ,int ) ;
 int oui_rfc1042 ;
 scalar_t__ p80211_stt_findproto (int ) ;
 int p80211skb_rxmeta (struct sk_buff*) ;
 int p80211skb_rxmeta_detach (struct sk_buff*) ;
 int pr_debug (char*,unsigned int) ;
 int skb_pull (struct sk_buff*,unsigned int) ;
 struct wlan_ethhdr* skb_push (struct sk_buff*,unsigned int) ;
 int skb_trim (struct sk_buff*,unsigned int) ;
 int wep_decrypt (struct wlandevice*,scalar_t__,unsigned int,int,scalar_t__,scalar_t__) ;

int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
   struct sk_buff *skb)
{
 struct net_device *netdev = wlandev->netdev;
 u16 fc;
 unsigned int payload_length;
 unsigned int payload_offset;
 u8 daddr[ETH_ALEN];
 u8 saddr[ETH_ALEN];
 union p80211_hdr *w_hdr;
 struct wlan_ethhdr *e_hdr;
 struct wlan_llc *e_llc;
 struct wlan_snap *e_snap;

 int foo;

 payload_length = skb->len - WLAN_HDR_A3_LEN - WLAN_CRC_LEN;
 payload_offset = WLAN_HDR_A3_LEN;

 w_hdr = (union p80211_hdr *)skb->data;


 fc = le16_to_cpu(w_hdr->a3.fc);
 if ((WLAN_GET_FC_TODS(fc) == 0) && (WLAN_GET_FC_FROMDS(fc) == 0)) {
  ether_addr_copy(daddr, w_hdr->a3.a1);
  ether_addr_copy(saddr, w_hdr->a3.a2);
 } else if ((WLAN_GET_FC_TODS(fc) == 0) &&
     (WLAN_GET_FC_FROMDS(fc) == 1)) {
  ether_addr_copy(daddr, w_hdr->a3.a1);
  ether_addr_copy(saddr, w_hdr->a3.a3);
 } else if ((WLAN_GET_FC_TODS(fc) == 1) &&
     (WLAN_GET_FC_FROMDS(fc) == 0)) {
  ether_addr_copy(daddr, w_hdr->a3.a3);
  ether_addr_copy(saddr, w_hdr->a3.a2);
 } else {
  payload_offset = WLAN_HDR_A4_LEN;
  if (payload_length < WLAN_HDR_A4_LEN - WLAN_HDR_A3_LEN) {
   netdev_err(netdev, "A4 frame too short!\n");
   return 1;
  }
  payload_length -= (WLAN_HDR_A4_LEN - WLAN_HDR_A3_LEN);
  ether_addr_copy(daddr, w_hdr->a4.a3);
  ether_addr_copy(saddr, w_hdr->a4.a4);
 }


 if ((wlandev->hostwep & HOSTWEP_PRIVACYINVOKED) &&
     WLAN_GET_FC_ISWEP(fc) &&
     (wlandev->hostwep & HOSTWEP_DECRYPT)) {
  if (payload_length <= 8) {
   netdev_err(netdev,
       "WEP frame too short (%u).\n", skb->len);
   return 1;
  }
  foo = wep_decrypt(wlandev, skb->data + payload_offset + 4,
      payload_length - 8, -1,
      skb->data + payload_offset,
      skb->data + payload_offset +
      payload_length - 4);
  if (foo) {

   pr_debug("Host de-WEP failed, dropping frame (%d).\n",
     foo);
   wlandev->rx.decrypt_err++;
   return 2;
  }


  payload_length -= 8;

  skb_pull(skb, 4);

  skb_trim(skb, skb->len - 4);

  wlandev->rx.decrypt++;
 }

 e_hdr = (struct wlan_ethhdr *)(skb->data + payload_offset);

 e_llc = (struct wlan_llc *)(skb->data + payload_offset);
 e_snap =
     (struct wlan_snap *)(skb->data + payload_offset +
  sizeof(struct wlan_llc));


 if ((payload_length >= sizeof(struct wlan_ethhdr)) &&
     (e_llc->dsap != 0xaa || e_llc->ssap != 0xaa) &&
     ((!ether_addr_equal_unaligned(daddr, e_hdr->daddr)) ||
      (!ether_addr_equal_unaligned(saddr, e_hdr->saddr)))) {
  pr_debug("802.3 ENCAP len: %d\n", payload_length);


  if (payload_length > (netdev->mtu + ETH_HLEN)) {


   netdev_err(netdev, "ENCAP frame too large (%d > %d)\n",
       payload_length, netdev->mtu + ETH_HLEN);
   return 1;
  }


  skb_pull(skb, payload_offset);

  skb_trim(skb, skb->len - WLAN_CRC_LEN);

 } else if ((payload_length >= sizeof(struct wlan_llc) +
  sizeof(struct wlan_snap)) &&
  (e_llc->dsap == 0xaa) &&
  (e_llc->ssap == 0xaa) &&
  (e_llc->ctl == 0x03) &&
     (((memcmp(e_snap->oui, oui_rfc1042,
     WLAN_IEEE_OUI_LEN) == 0) &&
     (ethconv == WLAN_ETHCONV_8021h) &&
     (p80211_stt_findproto(be16_to_cpu(e_snap->type)))) ||
     (memcmp(e_snap->oui, oui_rfc1042, WLAN_IEEE_OUI_LEN) !=
   0))) {
  pr_debug("SNAP+RFC1042 len: %d\n", payload_length);




  if (payload_length > netdev->mtu) {


   netdev_err(netdev, "SNAP frame too large (%d > %d)\n",
       payload_length, netdev->mtu);
   return 1;
  }


  skb_pull(skb, payload_offset);


  e_hdr = skb_push(skb, ETH_HLEN);
  ether_addr_copy(e_hdr->daddr, daddr);
  ether_addr_copy(e_hdr->saddr, saddr);
  e_hdr->type = htons(payload_length);


  skb_trim(skb, skb->len - WLAN_CRC_LEN);

 } else if ((payload_length >= sizeof(struct wlan_llc) +
  sizeof(struct wlan_snap)) &&
  (e_llc->dsap == 0xaa) &&
  (e_llc->ssap == 0xaa) &&
  (e_llc->ctl == 0x03)) {
  pr_debug("802.1h/RFC1042 len: %d\n", payload_length);





  if ((payload_length - sizeof(struct wlan_llc) -
   sizeof(struct wlan_snap))
   > netdev->mtu) {


   netdev_err(netdev, "DIXII frame too large (%ld > %d)\n",
       (long)(payload_length -
       sizeof(struct wlan_llc) -
       sizeof(struct wlan_snap)), netdev->mtu);
   return 1;
  }


  skb_pull(skb, payload_offset);


  skb_pull(skb, sizeof(struct wlan_llc));


  skb_pull(skb, sizeof(struct wlan_snap));


  e_hdr = skb_push(skb, ETH_HLEN);
  e_hdr->type = e_snap->type;
  ether_addr_copy(e_hdr->daddr, daddr);
  ether_addr_copy(e_hdr->saddr, saddr);


  skb_trim(skb, skb->len - WLAN_CRC_LEN);
 } else {
  pr_debug("NON-ENCAP len: %d\n", payload_length);






  if (payload_length > netdev->mtu) {


   netdev_err(netdev, "OTHER frame too large (%d > %d)\n",
       payload_length, netdev->mtu);
   return 1;
  }


  skb_pull(skb, payload_offset);


  e_hdr = skb_push(skb, ETH_HLEN);
  ether_addr_copy(e_hdr->daddr, daddr);
  ether_addr_copy(e_hdr->saddr, saddr);
  e_hdr->type = htons(payload_length);


  skb_trim(skb, skb->len - WLAN_CRC_LEN);
 }
 skb->protocol = eth_type_trans(skb, netdev);



 if (wlandev->spy_number)
  orinoco_spy_gather(wlandev, eth_hdr(skb)->h_source,
       p80211skb_rxmeta(skb));


 p80211skb_rxmeta_detach(skb);

 return 0;
}
