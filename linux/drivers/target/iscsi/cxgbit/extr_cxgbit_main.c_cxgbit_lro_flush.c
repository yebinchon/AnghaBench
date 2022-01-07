
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_lro_mgr {int lro_session_cnt; int lro_pkts; int lroq; } ;
struct sk_buff {int dummy; } ;
struct cxgbit_sock {int * lro_skb; } ;
struct cxgbit_lro_cb {struct cxgbit_sock* csk; } ;


 int __skb_unlink (struct sk_buff*,int *) ;
 int cxgbit_put_csk (struct cxgbit_sock*) ;
 int cxgbit_queue_lro_skb (struct cxgbit_sock*,struct sk_buff*) ;
 struct cxgbit_lro_cb* cxgbit_skb_lro_cb (struct sk_buff*) ;

__attribute__((used)) static void cxgbit_lro_flush(struct t4_lro_mgr *lro_mgr, struct sk_buff *skb)
{
 struct cxgbit_lro_cb *lro_cb = cxgbit_skb_lro_cb(skb);
 struct cxgbit_sock *csk = lro_cb->csk;

 csk->lro_skb = ((void*)0);

 __skb_unlink(skb, &lro_mgr->lroq);
 cxgbit_queue_lro_skb(csk, skb);

 cxgbit_put_csk(csk);

 lro_mgr->lro_pkts++;
 lro_mgr->lro_session_cnt--;
}
