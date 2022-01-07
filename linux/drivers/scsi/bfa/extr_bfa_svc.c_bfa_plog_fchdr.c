
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct bfa_plog_s {scalar_t__ plog_enabled; } ;
struct bfa_plog_rec_s {int dummy; } ;
typedef enum bfa_plog_mid { ____Placeholder_bfa_plog_mid } bfa_plog_mid ;
typedef enum bfa_plog_eid { ____Placeholder_bfa_plog_eid } bfa_plog_eid ;


 int BFA_PL_INT_LOG_SZ ;
 int bfa_plog_intarr (struct bfa_plog_s*,int,int,int ,int *,int) ;
 int memset (struct bfa_plog_rec_s*,int ,int) ;

void
bfa_plog_fchdr(struct bfa_plog_s *plog, enum bfa_plog_mid mid,
   enum bfa_plog_eid event,
   u16 misc, struct fchs_s *fchdr)
{
 struct bfa_plog_rec_s lp;
 u32 *tmp_int = (u32 *) fchdr;
 u32 ints[BFA_PL_INT_LOG_SZ];

 if (plog->plog_enabled) {
  memset(&lp, 0, sizeof(struct bfa_plog_rec_s));

  ints[0] = tmp_int[0];
  ints[1] = tmp_int[1];
  ints[2] = tmp_int[4];

  bfa_plog_intarr(plog, mid, event, misc, ints, 3);
 }
}
