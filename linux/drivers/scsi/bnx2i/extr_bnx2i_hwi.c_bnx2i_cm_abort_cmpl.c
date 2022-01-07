
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {scalar_t__ context; } ;
struct bnx2i_endpoint {int ofld_wait; int state; } ;


 int EP_STATE_DISCONN_COMPL ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void bnx2i_cm_abort_cmpl(struct cnic_sock *cm_sk)
{
 struct bnx2i_endpoint *ep = (struct bnx2i_endpoint *) cm_sk->context;

 ep->state = EP_STATE_DISCONN_COMPL;
 wake_up_interruptible(&ep->ofld_wait);
}
