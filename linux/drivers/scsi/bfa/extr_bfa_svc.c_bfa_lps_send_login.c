
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_lps_login_req_s {int mh; int auth_en; int fdisc; int nwwn; int pwwn; int pdu_size; int alpa; int bfa_tag; } ;
struct bfa_lps_s {int qe; int reqq; int bfa; int auth_en; int fdisc; int nwwn; int pwwn; int pdusz; int alpa; int bfa_tag; } ;
struct bfa_lps_mod_s {int lps_login_q; } ;


 struct bfa_lps_mod_s* BFA_LPS_MOD (int ) ;
 int BFI_LPS_H2I_LOGIN_REQ ;
 int BFI_MC_LPS ;
 int WARN_ON (int) ;
 int bfa_fn_lpu (int ) ;
 struct bfi_lps_login_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be16 (int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void
bfa_lps_send_login(struct bfa_lps_s *lps)
{
 struct bfa_lps_mod_s *mod = BFA_LPS_MOD(lps->bfa);
 struct bfi_lps_login_req_s *m;

 m = bfa_reqq_next(lps->bfa, lps->reqq);
 WARN_ON(!m);

 bfi_h2i_set(m->mh, BFI_MC_LPS, BFI_LPS_H2I_LOGIN_REQ,
  bfa_fn_lpu(lps->bfa));

 m->bfa_tag = lps->bfa_tag;
 m->alpa = lps->alpa;
 m->pdu_size = cpu_to_be16(lps->pdusz);
 m->pwwn = lps->pwwn;
 m->nwwn = lps->nwwn;
 m->fdisc = lps->fdisc;
 m->auth_en = lps->auth_en;

 bfa_reqq_produce(lps->bfa, lps->reqq, m->mh);
 list_del(&lps->qe);
 list_add_tail(&lps->qe, &mod->lps_login_q);
}
