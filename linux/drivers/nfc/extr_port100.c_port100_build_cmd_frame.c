
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int data; } ;
struct port100 {int dummy; } ;


 int PORT100_FRAME_HEADER_LEN ;
 int PORT100_FRAME_TAIL_LEN ;
 int port100_tx_frame_finish (int ) ;
 int port100_tx_frame_init (int ,int ) ;
 int port100_tx_update_payload_len (int ,int) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static void port100_build_cmd_frame(struct port100 *dev, u8 cmd_code,
        struct sk_buff *skb)
{

 int payload_len = skb->len;

 skb_push(skb, PORT100_FRAME_HEADER_LEN);
 skb_put(skb, PORT100_FRAME_TAIL_LEN);

 port100_tx_frame_init(skb->data, cmd_code);
 port100_tx_update_payload_len(skb->data, payload_len);
 port100_tx_frame_finish(skb->data);
}
