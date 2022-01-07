
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahd_softc {int dummy; } ;
struct TYPE_2__ {int errno; int errmesg; } ;


 int ALL_CHANNELS ;
 int CAM_LUN_WILDCARD ;
 int CAM_NO_HBA ;
 int CAM_TARGET_WILDCARD ;
 int ERROR ;
 int ROLE_UNKNOWN ;
 int SCB_LIST_NULL ;
 int ahd_abort_scbs (struct ahd_softc*,int ,int ,int ,int ,int ,int ) ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_free (struct ahd_softc*) ;
 TYPE_1__* ahd_hard_errors ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_name (struct ahd_softc*) ;
 int num_errors ;
 int panic (char*) ;
 int printk (char*,int ,int ) ;

__attribute__((used)) static void
ahd_handle_hwerrint(struct ahd_softc *ahd)
{




 int i;
 int error;

 error = ahd_inb(ahd, ERROR);
 for (i = 0; i < num_errors; i++) {
  if ((error & ahd_hard_errors[i].errno) != 0)
   printk("%s: hwerrint, %s\n",
          ahd_name(ahd), ahd_hard_errors[i].errmesg);
 }

 ahd_dump_card_state(ahd);
 panic("BRKADRINT");


 ahd_abort_scbs(ahd, CAM_TARGET_WILDCARD, ALL_CHANNELS,
         CAM_LUN_WILDCARD, SCB_LIST_NULL, ROLE_UNKNOWN,
         CAM_NO_HBA);


 ahd_free(ahd);
}
