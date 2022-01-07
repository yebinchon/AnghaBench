
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct list_head {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_fcxp_s {int fcxp_tag; } ;
typedef int ** bfa_fcxp_get_sglen_t ;
typedef int ** bfa_fcxp_get_sgaddr_t ;


 int BFI_SGE_INLINE ;
 int WARN_ON (int) ;
 int bfa_trc (struct bfa_s*,int ) ;

__attribute__((used)) static void
bfa_fcxp_init_reqrsp(struct bfa_fcxp_s *fcxp,
        struct bfa_s *bfa,
        u8 *use_ibuf,
        u32 *nr_sgles,
        bfa_fcxp_get_sgaddr_t *r_sga_cbfn,
        bfa_fcxp_get_sglen_t *r_sglen_cbfn,
        struct list_head *r_sgpg_q,
        int n_sgles,
        bfa_fcxp_get_sgaddr_t sga_cbfn,
        bfa_fcxp_get_sglen_t sglen_cbfn)
{

 WARN_ON(bfa == ((void*)0));

 bfa_trc(bfa, fcxp->fcxp_tag);

 if (n_sgles == 0) {
  *use_ibuf = 1;
 } else {
  WARN_ON(*sga_cbfn == ((void*)0));
  WARN_ON(*sglen_cbfn == ((void*)0));

  *use_ibuf = 0;
  *r_sga_cbfn = sga_cbfn;
  *r_sglen_cbfn = sglen_cbfn;

  *nr_sgles = n_sgles;




  if (n_sgles > BFI_SGE_INLINE)
   WARN_ON(1);
 }

}
