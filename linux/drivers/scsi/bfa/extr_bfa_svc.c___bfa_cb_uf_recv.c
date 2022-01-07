
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_uf_s {int bfa; } ;
struct bfa_uf_mod_s {int cbarg; int (* ufrecv ) (int ,struct bfa_uf_s*) ;} ;
typedef scalar_t__ bfa_boolean_t ;


 struct bfa_uf_mod_s* BFA_UF_MOD (int ) ;
 int stub1 (int ,struct bfa_uf_s*) ;

__attribute__((used)) static void
__bfa_cb_uf_recv(void *cbarg, bfa_boolean_t complete)
{
 struct bfa_uf_s *uf = cbarg;
 struct bfa_uf_mod_s *ufm = BFA_UF_MOD(uf->bfa);

 if (complete)
  ufm->ufrecv(ufm->cbarg, uf);
}
