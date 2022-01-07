
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_transinfo {scalar_t__ width; scalar_t__ period; int ppr_options; } ;
struct ahc_syncrate {int dummy; } ;
struct ahc_softc {int features; } ;
struct ahc_initiator_tinfo {struct ahc_transinfo goal; struct ahc_transinfo user; } ;
typedef scalar_t__ role_t ;


 int AHC_SYNCRATE_DT ;
 int AHC_SYNCRATE_FAST ;
 int AHC_SYNCRATE_ULTRA ;
 scalar_t__ AHC_SYNCRATE_ULTRA2 ;
 int AHC_ULTRA ;
 int AHC_ULTRA2 ;
 int ENAB40 ;
 int EXP_ACTIVE ;
 int MSG_EXT_PPR_DT_REQ ;
 scalar_t__ MSG_EXT_WDTR_BUS_8_BIT ;
 scalar_t__ ROLE_TARGET ;
 int SBLKCTL ;
 int SSTAT2 ;
 struct ahc_syncrate const* ahc_find_syncrate (struct ahc_softc*,int *,int *,int ) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int max (int ,int ) ;

__attribute__((used)) static const struct ahc_syncrate *
ahc_devlimited_syncrate(struct ahc_softc *ahc,
   struct ahc_initiator_tinfo *tinfo,
   u_int *period, u_int *ppr_options, role_t role)
{
 struct ahc_transinfo *transinfo;
 u_int maxsync;

 if ((ahc->features & AHC_ULTRA2) != 0) {
  if ((ahc_inb(ahc, SBLKCTL) & ENAB40) != 0
   && (ahc_inb(ahc, SSTAT2) & EXP_ACTIVE) == 0) {
   maxsync = AHC_SYNCRATE_DT;
  } else {
   maxsync = AHC_SYNCRATE_ULTRA;

   *ppr_options &= ~MSG_EXT_PPR_DT_REQ;
  }
 } else if ((ahc->features & AHC_ULTRA) != 0) {
  maxsync = AHC_SYNCRATE_ULTRA;
 } else {
  maxsync = AHC_SYNCRATE_FAST;
 }
 if (role == ROLE_TARGET)
  transinfo = &tinfo->user;
 else
  transinfo = &tinfo->goal;
 *ppr_options &= transinfo->ppr_options;
 if (transinfo->width == MSG_EXT_WDTR_BUS_8_BIT) {
  maxsync = max(maxsync, (u_int)AHC_SYNCRATE_ULTRA2);
  *ppr_options &= ~MSG_EXT_PPR_DT_REQ;
 }
 if (transinfo->period == 0) {
  *period = 0;
  *ppr_options = 0;
  return (((void*)0));
 }
 *period = max(*period, (u_int)transinfo->period);
 return (ahc_find_syncrate(ahc, period, ppr_options, maxsync));
}
