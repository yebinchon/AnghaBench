
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cxgbit_sock {int dummy; } ;


 int __cxgbit_process_rx_cpl (struct cxgbit_sock*,struct sk_buff*) ;
 int cxgbit_get_csk (struct cxgbit_sock*) ;
 int cxgbit_put_csk (struct cxgbit_sock*) ;

__attribute__((used)) static void cxgbit_process_rx_cpl(struct cxgbit_sock *csk, struct sk_buff *skb)
{
 cxgbit_get_csk(csk);
 __cxgbit_process_rx_cpl(csk, skb);
 cxgbit_put_csk(csk);
}
