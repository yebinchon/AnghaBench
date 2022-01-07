
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct cxgbi_sock {int tid; int flags; int state; int daddr; int saddr; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_abort_rpl_rss {scalar_t__ status; } ;


 scalar_t__ CPL_ERR_ABORT_FAILED ;
 unsigned int GET_TID (struct cpl_abort_rpl_rss*) ;
 int __kfree_skb (struct sk_buff*) ;
 struct cxgb4_lld_info* cxgbi_cdev_priv (struct cxgbi_device*) ;
 int cxgbi_sock_rcv_abort_rpl (struct cxgbi_sock*) ;
 struct cxgbi_sock* lookup_tid (struct tid_info*,unsigned int) ;
 int pr_info_ipaddr (char*,int *,int *,struct cxgbi_sock*,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void do_abort_rpl_rss(struct cxgbi_device *cdev, struct sk_buff *skb)
{
 struct cxgbi_sock *csk;
 struct cpl_abort_rpl_rss *rpl = (struct cpl_abort_rpl_rss *)skb->data;
 unsigned int tid = GET_TID(rpl);
 struct cxgb4_lld_info *lldi = cxgbi_cdev_priv(cdev);
 struct tid_info *t = lldi->tids;

 csk = lookup_tid(t, tid);
 if (!csk)
  goto rel_skb;

 if (csk)
  pr_info_ipaddr("csk 0x%p,%u,0x%lx,%u, status %u.\n",
          (&csk->saddr), (&csk->daddr), csk,
          csk->state, csk->flags, csk->tid, rpl->status);

 if (rpl->status == CPL_ERR_ABORT_FAILED)
  goto rel_skb;

 cxgbi_sock_rcv_abort_rpl(csk);
rel_skb:
 __kfree_skb(skb);
}
