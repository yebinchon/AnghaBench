
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int flags; int features; int our_id; } ;
struct ahd_initiator_tinfo {int dummy; } ;
struct ahd_devinfo {int dummy; } ;


 int AHD_NEG_ALWAYS ;
 int AHD_RESET_BUS_A ;
 int AHD_WIDE ;
 int AIC79XX_RESET_DELAY ;
 int CAM_LUN_WILDCARD ;
 int ROLE_INITIATOR ;
 int TRUE ;
 int ahd_compile_devinfo (struct ahd_devinfo*,int ,int,int ,char,int ) ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,char,int ,int,struct ahd_tmode_tstate**) ;
 int ahd_freeze_simq (struct ahd_softc*) ;
 int ahd_lock (struct ahd_softc*,unsigned long*) ;
 int ahd_release_simq (struct ahd_softc*) ;
 int ahd_reset_channel (struct ahd_softc*,char,int ) ;
 int ahd_unlock (struct ahd_softc*,unsigned long*) ;
 int ahd_update_neg_request (struct ahd_softc*,struct ahd_devinfo*,struct ahd_tmode_tstate*,struct ahd_initiator_tinfo*,int ) ;
 scalar_t__ aic79xx_no_reset ;
 int msleep (int ) ;

__attribute__((used)) static void
ahd_linux_initialize_scsi_bus(struct ahd_softc *ahd)
{
 u_int target_id;
 u_int numtarg;
 unsigned long s;

 target_id = 0;
 numtarg = 0;

 if (aic79xx_no_reset != 0)
  ahd->flags &= ~AHD_RESET_BUS_A;

 if ((ahd->flags & AHD_RESET_BUS_A) != 0)
  ahd_reset_channel(ahd, 'A', TRUE);
 else
  numtarg = (ahd->features & AHD_WIDE) ? 16 : 8;

 ahd_lock(ahd, &s);





 for (; target_id < numtarg; target_id++) {
  struct ahd_devinfo devinfo;
  struct ahd_initiator_tinfo *tinfo;
  struct ahd_tmode_tstate *tstate;

  tinfo = ahd_fetch_transinfo(ahd, 'A', ahd->our_id,
         target_id, &tstate);
  ahd_compile_devinfo(&devinfo, ahd->our_id, target_id,
        CAM_LUN_WILDCARD, 'A', ROLE_INITIATOR);
  ahd_update_neg_request(ahd, &devinfo, tstate,
           tinfo, AHD_NEG_ALWAYS);
 }
 ahd_unlock(ahd, &s);

 if ((ahd->flags & AHD_RESET_BUS_A) != 0) {
  ahd_freeze_simq(ahd);
  msleep(AIC79XX_RESET_DELAY);
  ahd_release_simq(ahd);
 }
}
