
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {void* it_present; void* it_len; scalar_t__ it_version; } ;
struct wilc_wfi_radiotap_hdr {int rate; TYPE_1__ hdr; int tx_flags; } ;
struct wilc_wfi_radiotap_cb_hdr {int rate; TYPE_1__ hdr; int tx_flags; } ;
struct sk_buff {struct wilc_wfi_radiotap_hdr* cb; int protocol; int pkt_type; int ip_summed; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_802_2 ;
 int GET_PKT_OFFSET (int) ;
 int HOST_HDR_OFFSET ;
 int IEEE80211_RADIOTAP_F_TX_FAIL ;
 int IEEE80211_RADIOTAP_F_TX_RTS ;
 int IEEE80211_RADIOTAP_RATE ;
 int IS_MANAGMEMENT_CALLBACK ;
 int IS_MGMT_STATUS_SUCCES ;
 int PACKET_OTHERHOST ;
 int TX_RADIOTAP_PRESENT ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int get_unaligned_le32 (int *) ;
 int htons (int ) ;
 int memset (struct wilc_wfi_radiotap_hdr*,int ,int) ;
 int netif_running (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 struct wilc_wfi_radiotap_hdr* skb_push (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int *,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;

void wilc_wfi_monitor_rx(struct net_device *mon_dev, u8 *buff, u32 size)
{
 u32 header, pkt_offset;
 struct sk_buff *skb = ((void*)0);
 struct wilc_wfi_radiotap_hdr *hdr;
 struct wilc_wfi_radiotap_cb_hdr *cb_hdr;

 if (!mon_dev)
  return;

 if (!netif_running(mon_dev))
  return;


 header = get_unaligned_le32(buff - HOST_HDR_OFFSET);




 pkt_offset = GET_PKT_OFFSET(header);

 if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {


  skb = dev_alloc_skb(size + sizeof(*cb_hdr));
  if (!skb)
   return;

  skb_put_data(skb, buff, size);

  cb_hdr = skb_push(skb, sizeof(*cb_hdr));
  memset(cb_hdr, 0, sizeof(*cb_hdr));

  cb_hdr->hdr.it_version = 0;

  cb_hdr->hdr.it_len = cpu_to_le16(sizeof(*cb_hdr));

  cb_hdr->hdr.it_present = cpu_to_le32(TX_RADIOTAP_PRESENT);

  cb_hdr->rate = 5;

  if (pkt_offset & IS_MGMT_STATUS_SUCCES) {

   cb_hdr->tx_flags = IEEE80211_RADIOTAP_F_TX_RTS;
  } else {
   cb_hdr->tx_flags = IEEE80211_RADIOTAP_F_TX_FAIL;
  }

 } else {
  skb = dev_alloc_skb(size + sizeof(*hdr));

  if (!skb)
   return;

  skb_put_data(skb, buff, size);
  hdr = skb_push(skb, sizeof(*hdr));
  memset(hdr, 0, sizeof(struct wilc_wfi_radiotap_hdr));
  hdr->hdr.it_version = 0;
  hdr->hdr.it_len = cpu_to_le16(sizeof(*hdr));
  hdr->hdr.it_present = cpu_to_le32
    (1 << IEEE80211_RADIOTAP_RATE);
  hdr->rate = 5;
 }

 skb->dev = mon_dev;
 skb_reset_mac_header(skb);
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb->pkt_type = PACKET_OTHERHOST;
 skb->protocol = htons(ETH_P_802_2);
 memset(skb->cb, 0, sizeof(skb->cb));

 netif_rx(skb);
}
