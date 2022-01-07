
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {scalar_t__ context; } ;
struct bnx2i_endpoint {scalar_t__ conn; int hba; int state; } ;


 int EP_STATE_TCP_FIN_RCVD ;
 int bnx2i_recovery_que_add_conn (int ,scalar_t__) ;

__attribute__((used)) static void bnx2i_cm_remote_close(struct cnic_sock *cm_sk)
{
 struct bnx2i_endpoint *ep = (struct bnx2i_endpoint *) cm_sk->context;

 ep->state = EP_STATE_TCP_FIN_RCVD;
 if (ep->conn)
  bnx2i_recovery_que_add_conn(ep->hba, ep->conn);
}
