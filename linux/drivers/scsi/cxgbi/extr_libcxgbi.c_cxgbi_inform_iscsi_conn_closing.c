
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {scalar_t__ state; int callback_lock; scalar_t__ user_data; int flags; } ;


 scalar_t__ CTP_ESTABLISHED ;
 int CXGBI_DBG_SOCK ;
 int ISCSI_ERR_TCP_CONN_CLOSE ;
 int iscsi_conn_failure (scalar_t__,int ) ;
 int log_debug (int,char*,struct cxgbi_sock*,scalar_t__,int ,scalar_t__) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void cxgbi_inform_iscsi_conn_closing(struct cxgbi_sock *csk)
{
 log_debug(1 << CXGBI_DBG_SOCK,
  "csk 0x%p, state %u, flags 0x%lx, conn 0x%p.\n",
  csk, csk->state, csk->flags, csk->user_data);

 if (csk->state != CTP_ESTABLISHED) {
  read_lock_bh(&csk->callback_lock);
  if (csk->user_data)
   iscsi_conn_failure(csk->user_data,
     ISCSI_ERR_TCP_CONN_CLOSE);
  read_unlock_bh(&csk->callback_lock);
 }
}
