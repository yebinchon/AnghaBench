
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {void* len; void* type; } ;
struct qlink_tlv_ie_set {int ie_data; scalar_t__ flags; int type; TYPE_1__ hdr; } ;


 size_t QTN_TLV_ID_IE_SET ;
 void* cpu_to_le16 (size_t) ;
 int memcpy (int ,int const*,size_t) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void qtnf_cmd_tlv_ie_set_add(struct sk_buff *cmd_skb, u8 frame_type,
        const u8 *buf, size_t len)
{
 struct qlink_tlv_ie_set *tlv;

 tlv = (struct qlink_tlv_ie_set *)skb_put(cmd_skb, sizeof(*tlv) + len);
 tlv->hdr.type = cpu_to_le16(QTN_TLV_ID_IE_SET);
 tlv->hdr.len = cpu_to_le16(len + sizeof(*tlv) - sizeof(tlv->hdr));
 tlv->type = frame_type;
 tlv->flags = 0;

 if (len && buf)
  memcpy(tlv->ie_data, buf, len);
}
