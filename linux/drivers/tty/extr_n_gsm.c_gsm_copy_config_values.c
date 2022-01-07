
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsm_mux {scalar_t__ ftype; int mtu; int mru; int n2; int t2; int t1; int initiator; int encoding; int adaption; } ;
struct gsm_config {int i; scalar_t__ k; int mtu; int mru; int n2; scalar_t__ t3; int t2; int t1; int initiator; int encapsulation; int adaption; } ;


 scalar_t__ UIH ;
 int memset (struct gsm_config*,int ,int) ;
 int pr_debug (char*,scalar_t__,int) ;

__attribute__((used)) static void gsm_copy_config_values(struct gsm_mux *gsm,
       struct gsm_config *c)
{
 memset(c, 0, sizeof(*c));
 c->adaption = gsm->adaption;
 c->encapsulation = gsm->encoding;
 c->initiator = gsm->initiator;
 c->t1 = gsm->t1;
 c->t2 = gsm->t2;
 c->t3 = 0;
 c->n2 = gsm->n2;
 if (gsm->ftype == UIH)
  c->i = 1;
 else
  c->i = 2;
 pr_debug("Ftype %d i %d\n", gsm->ftype, c->i);
 c->mru = gsm->mru;
 c->mtu = gsm->mtu;
 c->k = 0;
}
