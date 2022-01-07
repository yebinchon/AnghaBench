
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fchs_s {int dummy; } ;
struct bfa_s {int plog; } ;
struct bfa_fcxp_s {scalar_t__ use_ireqbuf; } ;


 scalar_t__ BFA_FCXP_REQ_PLD (struct bfa_fcxp_s*) ;
 int BFA_PL_EID_TX ;
 int BFA_PL_MID_HAL_FCXP ;
 int bfa_plog_fchdr (int ,int ,int ,scalar_t__,struct fchs_s*) ;
 int bfa_plog_fchdr_and_pl (int ,int ,int ,scalar_t__,struct fchs_s*,scalar_t__) ;

__attribute__((used)) static void
hal_fcxp_tx_plog(struct bfa_s *bfa, u32 reqlen, struct bfa_fcxp_s *fcxp,
   struct fchs_s *fchs)
{



 if (reqlen > 0) {
  if (fcxp->use_ireqbuf) {
   u32 pld_w0 =
    *((u32 *) BFA_FCXP_REQ_PLD(fcxp));

   bfa_plog_fchdr_and_pl(bfa->plog, BFA_PL_MID_HAL_FCXP,
     BFA_PL_EID_TX,
     reqlen + sizeof(struct fchs_s), fchs,
     pld_w0);
  } else {
   bfa_plog_fchdr(bfa->plog, BFA_PL_MID_HAL_FCXP,
     BFA_PL_EID_TX,
     reqlen + sizeof(struct fchs_s),
     fchs);
  }
 } else {
  bfa_plog_fchdr(bfa->plog, BFA_PL_MID_HAL_FCXP, BFA_PL_EID_TX,
          reqlen + sizeof(struct fchs_s), fchs);
 }
}
