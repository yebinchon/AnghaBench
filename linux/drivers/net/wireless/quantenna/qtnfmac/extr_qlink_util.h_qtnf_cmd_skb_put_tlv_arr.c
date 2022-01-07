
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct qlink_tlv_hdr {int val; void* len; void* type; } ;


 void* cpu_to_le16 (size_t) ;
 int memcpy (int ,int const*,size_t) ;
 struct qlink_tlv_hdr* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static inline void qtnf_cmd_skb_put_tlv_arr(struct sk_buff *skb,
         u16 tlv_id, const u8 arr[],
         size_t arr_len)
{
 struct qlink_tlv_hdr *hdr = skb_put(skb, sizeof(*hdr) + arr_len);

 hdr->type = cpu_to_le16(tlv_id);
 hdr->len = cpu_to_le16(arr_len);
 memcpy(hdr->val, arr, arr_len);
}
