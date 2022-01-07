
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_lps_logout_req_s {int mh; int port_name; int fw_tag; } ;
struct bfa_lps_s {int reqq; int bfa; int pwwn; int fw_tag; } ;


 int BFI_LPS_H2I_LOGOUT_REQ ;
 int BFI_MC_LPS ;
 int WARN_ON (int) ;
 int bfa_fn_lpu (int ) ;
 struct bfi_lps_logout_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_lps_send_logout(struct bfa_lps_s *lps)
{
 struct bfi_lps_logout_req_s *m;

 m = bfa_reqq_next(lps->bfa, lps->reqq);
 WARN_ON(!m);

 bfi_h2i_set(m->mh, BFI_MC_LPS, BFI_LPS_H2I_LOGOUT_REQ,
  bfa_fn_lpu(lps->bfa));

 m->fw_tag = lps->fw_tag;
 m->port_name = lps->pwwn;
 bfa_reqq_produce(lps->bfa, lps->reqq, m->mh);
}
