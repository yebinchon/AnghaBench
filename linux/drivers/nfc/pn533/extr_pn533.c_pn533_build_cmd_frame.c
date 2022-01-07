
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int data; } ;
struct pn533_frame_ops {int (* tx_frame_finish ) (int ) ;int (* tx_update_payload_len ) (int ,int) ;int (* tx_frame_init ) (int ,int ) ;int tx_tail_len; int tx_header_len; } ;
struct pn533 {struct pn533_frame_ops* ops; } ;


 int skb_push (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int) ;
 int stub3 (int ) ;

__attribute__((used)) static void pn533_build_cmd_frame(struct pn533 *dev, u8 cmd_code,
      struct sk_buff *skb)
{

 int payload_len = skb->len;
 struct pn533_frame_ops *ops = dev->ops;


 skb_push(skb, ops->tx_header_len);
 skb_put(skb, ops->tx_tail_len);

 ops->tx_frame_init(skb->data, cmd_code);
 ops->tx_update_payload_len(skb->data, payload_len);
 ops->tx_frame_finish(skb->data);
}
