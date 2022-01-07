
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_fcxp_s {struct bfa_fcxp_mod_s* fcxp_mod; } ;
struct bfa_fcxp_mod_s {int req_pld_sz; } ;



u32
bfa_fcxp_get_reqbufsz(struct bfa_fcxp_s *fcxp)
{
 struct bfa_fcxp_mod_s *mod = fcxp->fcxp_mod;

 return mod->req_pld_sz;
}
