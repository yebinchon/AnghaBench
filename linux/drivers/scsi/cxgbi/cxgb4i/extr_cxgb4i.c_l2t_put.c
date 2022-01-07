
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int * l2t; } ;


 int cxgb4_l2t_release (int *) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;

__attribute__((used)) static inline void l2t_put(struct cxgbi_sock *csk)
{
 if (csk->l2t) {
  cxgb4_l2t_release(csk->l2t);
  csk->l2t = ((void*)0);
  cxgbi_sock_put(csk);
 }
}
