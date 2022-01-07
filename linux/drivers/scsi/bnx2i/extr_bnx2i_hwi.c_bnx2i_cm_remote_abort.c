
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cnic_sock {scalar_t__ context; } ;
struct bnx2i_endpoint {scalar_t__ state; scalar_t__ conn; int hba; int ofld_wait; } ;


 scalar_t__ EP_STATE_DISCONN_START ;
 scalar_t__ EP_STATE_TCP_RST_RCVD ;
 int bnx2i_recovery_que_add_conn (int ,scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void bnx2i_cm_remote_abort(struct cnic_sock *cm_sk)
{
 struct bnx2i_endpoint *ep = (struct bnx2i_endpoint *) cm_sk->context;
 u32 old_state = ep->state;

 ep->state = EP_STATE_TCP_RST_RCVD;
 if (old_state == EP_STATE_DISCONN_START)
  wake_up_interruptible(&ep->ofld_wait);
 else
  if (ep->conn)
   bnx2i_recovery_que_add_conn(ep->hba, ep->conn);
}
