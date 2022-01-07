
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int cdev; } ;
struct cxgbit_sock {TYPE_1__ com; } ;


 scalar_t__ CSK_STATE_ESTABLISHED ;
 int __kfree_skb (struct sk_buff*) ;
 int cxgbit_ofld_send (int ,struct sk_buff*) ;

__attribute__((used)) static void cxgbit_send_rx_credits(struct cxgbit_sock *csk, struct sk_buff *skb)
{
 if (csk->com.state != CSK_STATE_ESTABLISHED) {
  __kfree_skb(skb);
  return;
 }

 cxgbit_ofld_send(csk->com.cdev, skb);
}
