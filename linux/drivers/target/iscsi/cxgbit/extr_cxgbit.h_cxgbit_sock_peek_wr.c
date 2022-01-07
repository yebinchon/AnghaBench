
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cxgbit_sock {struct sk_buff* wr_pending_head; } ;



__attribute__((used)) static inline struct sk_buff *cxgbit_sock_peek_wr(const struct cxgbit_sock *csk)
{
 return csk->wr_pending_head;
}
