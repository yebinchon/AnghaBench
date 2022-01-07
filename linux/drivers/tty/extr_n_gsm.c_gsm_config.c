
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {scalar_t__ t1; scalar_t__ t2; int encoding; int adaption; int initiator; int mru; int mtu; int n2; int * dlci; int ftype; } ;
struct gsm_config {int adaption; int mru; int mtu; int n2; int encapsulation; int initiator; int i; scalar_t__ t1; scalar_t__ t2; scalar_t__ k; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MAX_MRU ;
 int MAX_MTU ;
 int UI ;
 int UIH ;
 int gsm_activate_mux (struct gsm_mux*) ;
 int gsm_cleanup_mux (struct gsm_mux*) ;
 int gsm_disconnect (struct gsm_mux*) ;
 int gsm_dlci_begin_open (int ) ;

__attribute__((used)) static int gsm_config(struct gsm_mux *gsm, struct gsm_config *c)
{
 int need_close = 0;
 int need_restart = 0;


 if ((c->adaption != 1 && c->adaption != 2) || c->k)
  return -EOPNOTSUPP;

 if (c->mru > MAX_MRU || c->mtu > MAX_MTU || c->mru < 8 || c->mtu < 8)
  return -EINVAL;
 if (c->n2 < 3)
  return -EINVAL;
 if (c->encapsulation > 1)
  return -EINVAL;
 if (c->initiator > 1)
  return -EINVAL;
 if (c->i == 0 || c->i > 2)
  return -EINVAL;





 if (c->t1 != 0 && c->t1 != gsm->t1)
  need_restart = 1;
 if (c->t2 != 0 && c->t2 != gsm->t2)
  need_restart = 1;
 if (c->encapsulation != gsm->encoding)
  need_restart = 1;
 if (c->adaption != gsm->adaption)
  need_restart = 1;

 if (c->initiator != gsm->initiator)
  need_close = 1;
 if (c->mru != gsm->mru)
  need_restart = 1;
 if (c->mtu != gsm->mtu)
  need_restart = 1;






 if (need_close || need_restart) {
  int ret;

  ret = gsm_disconnect(gsm);

  if (ret)
   return ret;
 }
 if (need_restart)
  gsm_cleanup_mux(gsm);

 gsm->initiator = c->initiator;
 gsm->mru = c->mru;
 gsm->mtu = c->mtu;
 gsm->encoding = c->encapsulation;
 gsm->adaption = c->adaption;
 gsm->n2 = c->n2;

 if (c->i == 1)
  gsm->ftype = UIH;
 else if (c->i == 2)
  gsm->ftype = UI;

 if (c->t1)
  gsm->t1 = c->t1;
 if (c->t2)
  gsm->t2 = c->t2;





 if (need_restart)
  gsm_activate_mux(gsm);
 if (gsm->initiator && need_close)
  gsm_dlci_begin_open(gsm->dlci[0]);
 return 0;
}
