
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbit_sock {int * wr_pending_head; int * wr_pending_tail; } ;



__attribute__((used)) static inline void cxgbit_sock_reset_wr_list(struct cxgbit_sock *csk)
{
 csk->wr_pending_tail = ((void*)0);
 csk->wr_pending_head = ((void*)0);
}
