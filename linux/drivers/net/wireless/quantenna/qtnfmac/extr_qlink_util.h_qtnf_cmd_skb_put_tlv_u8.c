
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct qlink_tlv_hdr {int * val; void* len; void* type; } ;


 void* cpu_to_le16 (int) ;
 struct qlink_tlv_hdr* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static inline void qtnf_cmd_skb_put_tlv_u8(struct sk_buff *skb, u16 tlv_id,
        u8 value)
{
 struct qlink_tlv_hdr *hdr = skb_put(skb, sizeof(*hdr) + sizeof(value));

 hdr->type = cpu_to_le16(tlv_id);
 hdr->len = cpu_to_le16(sizeof(value));
 *hdr->val = value;
}
