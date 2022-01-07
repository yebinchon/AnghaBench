
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct rndis_packet_msg_type {void* DataLength; void* DataOffset; void* MessageLength; void* MessageType; } ;


 int RNDIS_MSG_PACKET ;
 void* cpu_to_le32 (int) ;
 int memset (struct rndis_packet_msg_type*,int ,int) ;
 struct rndis_packet_msg_type* skb_push (struct sk_buff*,int) ;

void rndis_add_hdr(struct sk_buff *skb)
{
 struct rndis_packet_msg_type *header;

 if (!skb)
  return;
 header = skb_push(skb, sizeof(*header));
 memset(header, 0, sizeof *header);
 header->MessageType = cpu_to_le32(RNDIS_MSG_PACKET);
 header->MessageLength = cpu_to_le32(skb->len);
 header->DataOffset = cpu_to_le32(36);
 header->DataLength = cpu_to_le32(skb->len - sizeof(*header));
}
