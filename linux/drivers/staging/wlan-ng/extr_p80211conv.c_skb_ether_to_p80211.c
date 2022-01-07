
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ seq; scalar_t__ dur; int fc; struct wlan_ethhdr* a3; struct wlan_ethhdr* a2; struct wlan_ethhdr* a1; } ;
union p80211_hdr {TYPE_1__ a3; } ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct wlandevice {int macmode; int hostwep; TYPE_2__* netdev; int * bssid; } ;
struct wlan_snap {struct wlan_ethhdr* oui; int type; } ;
struct wlan_llc {int dsap; int ssap; int ctl; } ;
struct wlan_ethhdr {int saddr; int daddr; int type; } ;
struct sk_buff {scalar_t__ len; int * data; } ;
struct p80211_metawep {int * data; int icv; int iv; } ;
typedef int e_hdr ;
typedef int __le16 ;
struct TYPE_5__ {int * dev_addr; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 scalar_t__ ETH_DATA_LEN ;
 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int HOSTWEP_DEFAULTKEY_MASK ;
 int HOSTWEP_ENCRYPT ;
 int HOSTWEP_PRIVACYINVOKED ;
 scalar_t__ WLAN_ETHCONV_8021h ;
 scalar_t__ WLAN_ETHCONV_ENCAP ;
 int WLAN_FSTYPE_DATAONLY ;
 int WLAN_FTYPE_DATA ;
 int WLAN_IEEE_OUI_LEN ;



 int WLAN_SET_FC_FROMDS (int) ;
 int WLAN_SET_FC_FSTYPE (int ) ;
 int WLAN_SET_FC_FTYPE (int ) ;
 int WLAN_SET_FC_ISWEP (int) ;
 int WLAN_SET_FC_TODS (int) ;
 int cpu_to_le16 (int) ;
 int htons (scalar_t__) ;
 int kfree (int *) ;
 int * kmalloc (scalar_t__,int ) ;
 int memcpy (struct wlan_ethhdr*,int *,int) ;
 int netdev_err (TYPE_2__*,char*) ;
 int netdev_warn (TYPE_2__*,char*,int) ;
 scalar_t__ ntohs (int ) ;
 int * oui_8021h ;
 int * oui_rfc1042 ;
 scalar_t__ p80211_stt_findproto (scalar_t__) ;
 int pr_debug (char*,...) ;
 int skb_pull (struct sk_buff*,int ) ;
 void* skb_push (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;
 int wep_encrypt (struct wlandevice*,int *,int *,scalar_t__,int,int ,int ) ;

int skb_ether_to_p80211(struct wlandevice *wlandev, u32 ethconv,
   struct sk_buff *skb, union p80211_hdr *p80211_hdr,
   struct p80211_metawep *p80211_wep)
{
 __le16 fc;
 u16 proto;
 struct wlan_ethhdr e_hdr;
 struct wlan_llc *e_llc;
 struct wlan_snap *e_snap;
 int foo;

 memcpy(&e_hdr, skb->data, sizeof(e_hdr));

 if (skb->len <= 0) {
  pr_debug("zero-length skb!\n");
  return 1;
 }

 if (ethconv == WLAN_ETHCONV_ENCAP) {
  pr_debug("ENCAP len: %d\n", skb->len);



 } else {

  proto = ntohs(e_hdr.type);
  if (proto <= ETH_DATA_LEN) {
   pr_debug("802.3 len: %d\n", skb->len);




   skb_pull(skb, ETH_HLEN);


   skb_trim(skb, proto);
  } else {
   pr_debug("DIXII len: %d\n", skb->len);



   skb_pull(skb, ETH_HLEN);


   e_snap = skb_push(skb, sizeof(struct wlan_snap));
   e_snap->type = htons(proto);
   if (ethconv == WLAN_ETHCONV_8021h &&
       p80211_stt_findproto(proto)) {
    memcpy(e_snap->oui, oui_8021h,
           WLAN_IEEE_OUI_LEN);
   } else {
    memcpy(e_snap->oui, oui_rfc1042,
           WLAN_IEEE_OUI_LEN);
   }


   e_llc = skb_push(skb, sizeof(struct wlan_llc));
   e_llc->dsap = 0xAA;
   e_llc->ssap = 0xAA;
   e_llc->ctl = 0x03;
  }
 }



 fc = cpu_to_le16(WLAN_SET_FC_FTYPE(WLAN_FTYPE_DATA) |
    WLAN_SET_FC_FSTYPE(WLAN_FSTYPE_DATAONLY));

 switch (wlandev->macmode) {
 case 128:
  memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
  memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
  memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
  break;
 case 129:
  fc |= cpu_to_le16(WLAN_SET_FC_TODS(1));
  memcpy(p80211_hdr->a3.a1, wlandev->bssid, ETH_ALEN);
  memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
  memcpy(p80211_hdr->a3.a3, &e_hdr.daddr, ETH_ALEN);
  break;
 case 130:
  fc |= cpu_to_le16(WLAN_SET_FC_FROMDS(1));
  memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
  memcpy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
  memcpy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
  break;
 default:
  netdev_err(wlandev->netdev,
      "Error: Converting eth to wlan in unknown mode.\n");
  return 1;
 }

 p80211_wep->data = ((void*)0);

 if ((wlandev->hostwep & HOSTWEP_PRIVACYINVOKED) &&
     (wlandev->hostwep & HOSTWEP_ENCRYPT)) {


  p80211_wep->data = kmalloc(skb->len, GFP_ATOMIC);
  if (!p80211_wep->data)
   return -ENOMEM;
  foo = wep_encrypt(wlandev, skb->data, p80211_wep->data,
      skb->len,
      wlandev->hostwep & HOSTWEP_DEFAULTKEY_MASK,
      p80211_wep->iv, p80211_wep->icv);
  if (foo) {
   netdev_warn(wlandev->netdev,
        "Host en-WEP failed, dropping frame (%d).\n",
        foo);
   kfree(p80211_wep->data);
   return 2;
  }
  fc |= cpu_to_le16(WLAN_SET_FC_ISWEP(1));
 }



 p80211_hdr->a3.fc = fc;
 p80211_hdr->a3.dur = 0;
 p80211_hdr->a3.seq = 0;

 return 0;
}
