
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_uf_mod_s {void* cbarg; int ufrecv; } ;
struct bfa_s {int dummy; } ;
typedef int bfa_cb_uf_recv_t ;


 struct bfa_uf_mod_s* BFA_UF_MOD (struct bfa_s*) ;

void
bfa_uf_recv_register(struct bfa_s *bfa, bfa_cb_uf_recv_t ufrecv, void *cbarg)
{
 struct bfa_uf_mod_s *ufm = BFA_UF_MOD(bfa);

 ufm->ufrecv = ufrecv;
 ufm->cbarg = cbarg;
}
