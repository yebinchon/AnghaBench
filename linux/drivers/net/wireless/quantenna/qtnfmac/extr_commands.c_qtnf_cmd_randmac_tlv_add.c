
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct qlink_tlv_hdr {scalar_t__ val; void* len; void* type; } ;
struct qlink_random_mac_addr {int mac_addr_mask; int mac_addr; } ;


 int ETH_ALEN ;
 int QTN_TLV_ID_RANDOM_MAC_ADDR ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,int const*,int ) ;
 struct qlink_tlv_hdr* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void qtnf_cmd_randmac_tlv_add(struct sk_buff *cmd_skb,
         const u8 *mac_addr,
         const u8 *mac_addr_mask)
{
 struct qlink_random_mac_addr *randmac;
 struct qlink_tlv_hdr *hdr =
  skb_put(cmd_skb, sizeof(*hdr) + sizeof(*randmac));

 hdr->type = cpu_to_le16(QTN_TLV_ID_RANDOM_MAC_ADDR);
 hdr->len = cpu_to_le16(sizeof(*randmac));
 randmac = (struct qlink_random_mac_addr *)hdr->val;

 memcpy(randmac->mac_addr, mac_addr, ETH_ALEN);
 memcpy(randmac->mac_addr_mask, mac_addr_mask, ETH_ALEN);
}
