
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int pause; int flags; int bugs; size_t cmdcmplt_bucket; int features; int (* bus_intr ) (struct ahd_softc*) ;int cmdcmplt_total; int * cmdcmplt_counts; } ;


 int AHD_ALL_INTERRUPTS ;
 int AHD_INTCOLLISION_BUG ;
 int AHD_REMOVABLE ;
 int AHD_TARGETROLE ;
 int CLRCMDINT ;
 int CLRINT ;
 int CMDCMPLT ;
 int FALSE ;
 int HWERRINT ;
 int INTEN ;
 int INTSTAT ;
 int INT_PEND ;
 scalar_t__ NO_SEQINT ;
 int PCIINT ;
 int SCSIINT ;
 int SEQINT ;
 int SEQINTCODE ;
 int SPLTINT ;
 scalar_t__ ahd_check_cmdcmpltqueues (struct ahd_softc*) ;
 int ahd_flush_device_writes (struct ahd_softc*) ;
 int ahd_handle_hwerrint (struct ahd_softc*) ;
 int ahd_handle_scsiint (struct ahd_softc*,int) ;
 int ahd_handle_seqint (struct ahd_softc*,int) ;
 scalar_t__ ahd_inb (struct ahd_softc*,int ) ;
 scalar_t__ ahd_is_paused (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int ) ;
 int ahd_run_qoutfifo (struct ahd_softc*) ;
 int ahd_run_tqinfifo (struct ahd_softc*,int ) ;
 int stub1 (struct ahd_softc*) ;

int
ahd_intr(struct ahd_softc *ahd)
{
 u_int intstat;

 if ((ahd->pause & INTEN) == 0) {






  return (0);
 }







 if ((ahd->flags & AHD_ALL_INTERRUPTS) == 0
  && (ahd_check_cmdcmpltqueues(ahd) != 0))
  intstat = CMDCMPLT;
 else
  intstat = ahd_inb(ahd, INTSTAT);

 if ((intstat & INT_PEND) == 0)
  return (0);

 if (intstat & CMDCMPLT) {
  ahd_outb(ahd, CLRINT, CLRCMDINT);
  if ((ahd->bugs & AHD_INTCOLLISION_BUG) != 0) {
   if (ahd_is_paused(ahd)) {





    if (ahd_inb(ahd, SEQINTCODE) != NO_SEQINT)
     intstat |= SEQINT;
   }
  } else {
   ahd_flush_device_writes(ahd);
  }
  ahd_run_qoutfifo(ahd);
  ahd->cmdcmplt_counts[ahd->cmdcmplt_bucket]++;
  ahd->cmdcmplt_total++;




 }





 if (intstat == 0xFF && (ahd->features & AHD_REMOVABLE) != 0) {

 } else if (intstat & HWERRINT) {
  ahd_handle_hwerrint(ahd);
 } else if ((intstat & (PCIINT|SPLTINT)) != 0) {
  ahd->bus_intr(ahd);
 } else {

  if ((intstat & SEQINT) != 0)
   ahd_handle_seqint(ahd, intstat);

  if ((intstat & SCSIINT) != 0)
   ahd_handle_scsiint(ahd, intstat);
 }
 return (1);
}
