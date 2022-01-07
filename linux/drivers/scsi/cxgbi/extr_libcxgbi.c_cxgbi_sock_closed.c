
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sin_port; } ;
struct cxgbi_sock {scalar_t__ state; TYPE_2__* cdev; scalar_t__ dst; TYPE_1__ saddr; int tid; int flags; } ;
struct TYPE_4__ {int (* csk_release_offload_resources ) (struct cxgbi_sock*) ;} ;


 int CTPF_ACTIVE_CLOSE_NEEDED ;
 scalar_t__ CTP_ACTIVE_OPEN ;
 scalar_t__ CTP_CLOSED ;
 int CXGBI_DBG_SOCK ;
 int cxgbi_inform_iscsi_conn_closing (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int cxgbi_sock_set_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_set_state (struct cxgbi_sock*,scalar_t__) ;
 int dst_release (scalar_t__) ;
 int log_debug (int,char*,struct cxgbi_sock*,scalar_t__,int ,int ) ;
 int sock_put_port (struct cxgbi_sock*) ;
 int stub1 (struct cxgbi_sock*) ;

void cxgbi_sock_closed(struct cxgbi_sock *csk)
{
 log_debug(1 << CXGBI_DBG_SOCK, "csk 0x%p,%u,0x%lx,%u.\n",
  csk, (csk)->state, (csk)->flags, (csk)->tid);
 cxgbi_sock_set_flag(csk, CTPF_ACTIVE_CLOSE_NEEDED);
 if (csk->state == CTP_ACTIVE_OPEN || csk->state == CTP_CLOSED)
  return;
 if (csk->saddr.sin_port)
  sock_put_port(csk);
 if (csk->dst)
  dst_release(csk->dst);
 csk->cdev->csk_release_offload_resources(csk);
 cxgbi_sock_set_state(csk, CTP_CLOSED);
 cxgbi_inform_iscsi_conn_closing(csk);
 cxgbi_sock_put(csk);
}
