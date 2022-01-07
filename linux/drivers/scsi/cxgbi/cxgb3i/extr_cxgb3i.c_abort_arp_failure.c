
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_abort_req {int cmd; } ;


 int CPL_ABORT_NO_RST ;
 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 int GET_TID (struct cpl_abort_req*) ;
 struct cpl_abort_req* cplhdr (struct sk_buff*) ;
 int cxgb3_ofld_send (struct t3cdev*,struct sk_buff*) ;
 int log_debug (int,char*,struct t3cdev*,int ,struct sk_buff*) ;

__attribute__((used)) static void abort_arp_failure(struct t3cdev *tdev, struct sk_buff *skb)
{
 struct cpl_abort_req *req = cplhdr(skb);

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "t3dev 0x%p, tid %u, skb 0x%p.\n",
  tdev, GET_TID(req), skb);
 req->cmd = CPL_ABORT_NO_RST;
 cxgb3_ofld_send(tdev, skb);
}
