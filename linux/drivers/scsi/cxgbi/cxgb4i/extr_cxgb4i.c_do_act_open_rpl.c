
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ function; } ;
struct cxgbi_sock {int lock; TYPE_1__ retry_timer; int csk_family; int port_id; int flags; int state; int daddr; int saddr; } ;
struct cxgbi_device {int owner; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_act_open_rpl {int atid_status; } ;


 int AOPEN_ATID_G (int ) ;
 unsigned int AOPEN_STATUS_G (int ) ;
 unsigned int CPL_ERR_ARP_MISS ;
 unsigned int CPL_ERR_CONN_EXIST ;
 unsigned int CPL_ERR_TCAM_FULL ;
 unsigned int GET_TID (struct cpl_act_open_rpl*) ;
 int HZ ;
 unsigned int TID_TID_G (int ) ;
 int __kfree_skb (struct sk_buff*) ;
 int act_open_rpl_status_to_errno (unsigned int) ;
 int be32_to_cpu (int ) ;
 scalar_t__ csk_act_open_retry_timer ;
 int cxgb4_remove_tid (struct tid_info*,int ,unsigned int,int ) ;
 struct cxgb4_lld_info* cxgbi_cdev_priv (struct cxgbi_device*) ;
 int cxgbi_sock_fail_act_open (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_get (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 scalar_t__ is_neg_adv (unsigned int) ;
 scalar_t__ jiffies ;
 struct cxgbi_sock* lookup_atid (struct tid_info*,unsigned int) ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 int module_put (int ) ;
 int pr_err (char*,unsigned int,unsigned int) ;
 int pr_info_ipaddr (char*,int *,int *,unsigned int,unsigned int,unsigned int,struct cxgbi_sock*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void do_act_open_rpl(struct cxgbi_device *cdev, struct sk_buff *skb)
{
 struct cxgbi_sock *csk;
 struct cpl_act_open_rpl *rpl = (struct cpl_act_open_rpl *)skb->data;
 unsigned int tid = GET_TID(rpl);
 unsigned int atid =
  TID_TID_G(AOPEN_ATID_G(be32_to_cpu(rpl->atid_status)));
 unsigned int status = AOPEN_STATUS_G(be32_to_cpu(rpl->atid_status));
 struct cxgb4_lld_info *lldi = cxgbi_cdev_priv(cdev);
 struct tid_info *t = lldi->tids;

 csk = lookup_atid(t, atid);
 if (unlikely(!csk)) {
  pr_err("NO matching conn. atid %u, tid %u.\n", atid, tid);
  goto rel_skb;
 }

 pr_info_ipaddr("tid %u/%u, status %u.\n"
         "csk 0x%p,%u,0x%lx. ", (&csk->saddr), (&csk->daddr),
         atid, tid, status, csk, csk->state, csk->flags);

 if (is_neg_adv(status))
  goto rel_skb;

 module_put(cdev->owner);

 if (status && status != CPL_ERR_TCAM_FULL &&
     status != CPL_ERR_CONN_EXIST &&
     status != CPL_ERR_ARP_MISS)
  cxgb4_remove_tid(lldi->tids, csk->port_id, GET_TID(rpl),
     csk->csk_family);

 cxgbi_sock_get(csk);
 spin_lock_bh(&csk->lock);

 if (status == CPL_ERR_CONN_EXIST &&
     csk->retry_timer.function != csk_act_open_retry_timer) {
  csk->retry_timer.function = csk_act_open_retry_timer;
  mod_timer(&csk->retry_timer, jiffies + HZ / 2);
 } else
  cxgbi_sock_fail_act_open(csk,
     act_open_rpl_status_to_errno(status));

 spin_unlock_bh(&csk->lock);
 cxgbi_sock_put(csk);
rel_skb:
 __kfree_skb(skb);
}
