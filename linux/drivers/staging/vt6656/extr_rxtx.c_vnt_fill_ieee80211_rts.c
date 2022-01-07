
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_usb_send_context {TYPE_1__* skb; } ;
struct ieee80211_rts {int ta; int ra; int frame_control; int duration; } ;
struct ieee80211_hdr {int addr2; int addr1; } ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ data; } ;


 int IEEE80211_FTYPE_CTL ;
 int IEEE80211_STYPE_RTS ;
 int cpu_to_le16 (int) ;
 int ether_addr_copy (int ,int ) ;

__attribute__((used)) static int vnt_fill_ieee80211_rts(struct vnt_usb_send_context *tx_context,
      struct ieee80211_rts *rts, __le16 duration)
{
 struct ieee80211_hdr *hdr =
    (struct ieee80211_hdr *)tx_context->skb->data;

 rts->duration = duration;
 rts->frame_control =
  cpu_to_le16(IEEE80211_FTYPE_CTL | IEEE80211_STYPE_RTS);

 ether_addr_copy(rts->ra, hdr->addr1);
 ether_addr_copy(rts->ta, hdr->addr2);

 return 0;
}
