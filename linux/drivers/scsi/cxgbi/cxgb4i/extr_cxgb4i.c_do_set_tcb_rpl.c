
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct cxgbi_sock {int cmpl; int err; int tid; int flags; int state; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_set_tcb_rpl {scalar_t__ status; } ;


 scalar_t__ CPL_ERR_NONE ;
 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 int EINVAL ;
 unsigned int GET_TID (struct cpl_set_tcb_rpl*) ;
 int __kfree_skb (struct sk_buff*) ;
 int complete (int *) ;
 struct cxgb4_lld_info* cxgbi_cdev_priv (struct cxgbi_device*) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ,int ,int ,scalar_t__) ;
 struct cxgbi_sock* lookup_tid (struct tid_info*,unsigned int) ;
 int pr_err (char*,...) ;

__attribute__((used)) static void do_set_tcb_rpl(struct cxgbi_device *cdev, struct sk_buff *skb)
{
 struct cpl_set_tcb_rpl *rpl = (struct cpl_set_tcb_rpl *)skb->data;
 unsigned int tid = GET_TID(rpl);
 struct cxgb4_lld_info *lldi = cxgbi_cdev_priv(cdev);
 struct tid_info *t = lldi->tids;
 struct cxgbi_sock *csk;

 csk = lookup_tid(t, tid);
 if (!csk) {
  pr_err("can't find conn. for tid %u.\n", tid);
  return;
 }

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "csk 0x%p,%u,%lx,%u, status 0x%x.\n",
  csk, csk->state, csk->flags, csk->tid, rpl->status);

 if (rpl->status != CPL_ERR_NONE) {
  pr_err("csk 0x%p,%u, SET_TCB_RPL status %u.\n",
   csk, tid, rpl->status);
  csk->err = -EINVAL;
 }

 complete(&csk->cmpl);

 __kfree_skb(skb);
}
