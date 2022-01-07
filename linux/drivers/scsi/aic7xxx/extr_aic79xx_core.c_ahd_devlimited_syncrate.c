
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_transinfo {int ppr_options; scalar_t__ width; scalar_t__ period; } ;
struct ahd_softc {int dummy; } ;
struct ahd_initiator_tinfo {struct ahd_transinfo goal; struct ahd_transinfo user; } ;
typedef scalar_t__ role_t ;


 int AHD_SYNCRATE_PACED ;
 int AHD_SYNCRATE_ULTRA ;
 scalar_t__ AHD_SYNCRATE_ULTRA2 ;
 int ENAB40 ;
 int EXP_ACTIVE ;
 int MSG_EXT_PPR_DT_REQ ;
 int MSG_EXT_PPR_PCOMP_EN ;
 int MSG_EXT_PPR_QAS_REQ ;
 scalar_t__ MSG_EXT_WDTR_BUS_8_BIT ;
 scalar_t__ ROLE_TARGET ;
 int SBLKCTL ;
 int SSTAT2 ;
 int ahd_find_syncrate (struct ahd_softc*,int*,int*,int) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int max (int,int) ;

__attribute__((used)) static void
ahd_devlimited_syncrate(struct ahd_softc *ahd,
   struct ahd_initiator_tinfo *tinfo,
   u_int *period, u_int *ppr_options, role_t role)
{
 struct ahd_transinfo *transinfo;
 u_int maxsync;

 if ((ahd_inb(ahd, SBLKCTL) & ENAB40) != 0
  && (ahd_inb(ahd, SSTAT2) & EXP_ACTIVE) == 0) {
  maxsync = AHD_SYNCRATE_PACED;
 } else {
  maxsync = AHD_SYNCRATE_ULTRA;

  *ppr_options &= MSG_EXT_PPR_QAS_REQ;
 }
 if (role == ROLE_TARGET)
  transinfo = &tinfo->user;
 else
  transinfo = &tinfo->goal;
 *ppr_options &= (transinfo->ppr_options|MSG_EXT_PPR_PCOMP_EN);
 if (transinfo->width == MSG_EXT_WDTR_BUS_8_BIT) {
  maxsync = max(maxsync, (u_int)AHD_SYNCRATE_ULTRA2);
  *ppr_options &= ~MSG_EXT_PPR_DT_REQ;
 }
 if (transinfo->period == 0) {
  *period = 0;
  *ppr_options = 0;
 } else {
  *period = max(*period, (u_int)transinfo->period);
  ahd_find_syncrate(ahd, period, ppr_options, maxsync);
 }
}
