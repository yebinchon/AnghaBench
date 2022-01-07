
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_lro_mgr {int lroq; } ;
struct sk_buff {int dummy; } ;


 int cxgbit_lro_flush (struct t4_lro_mgr*,struct sk_buff*) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static void cxgbit_uld_lro_flush(struct t4_lro_mgr *lro_mgr)
{
 struct sk_buff *skb;

 while ((skb = skb_peek(&lro_mgr->lroq)))
  cxgbit_lro_flush(lro_mgr, skb);
}
