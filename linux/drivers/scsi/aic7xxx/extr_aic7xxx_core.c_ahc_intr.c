
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_softc {int pause; int flags; int unsolicited_ints; int chip; int features; int (* bus_intr ) (struct ahc_softc*) ;} ;


 int AHC_ALL_INTERRUPTS ;
 int AHC_EDGE_INTERRUPT ;
 int AHC_PCI ;
 int AHC_REMOVABLE ;
 int AHC_TARGETROLE ;
 int BRKADRINT ;
 int CLRCMDINT ;
 int CLRINT ;
 int CMDCMPLT ;
 int ERROR ;
 int FALSE ;
 int INTEN ;
 int INTSTAT ;
 int INT_PEND ;
 int PCIERRSTAT ;
 int SCSIINT ;
 int SEQINT ;
 scalar_t__ ahc_check_cmdcmpltqueues (struct ahc_softc*) ;
 int ahc_flush_device_writes (struct ahc_softc*) ;
 int ahc_handle_brkadrint (struct ahc_softc*) ;
 int ahc_handle_scsiint (struct ahc_softc*,int) ;
 int ahc_handle_seqint (struct ahc_softc*,int) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int ) ;
 int ahc_pause_bug_fix (struct ahc_softc*) ;
 int ahc_run_qoutfifo (struct ahc_softc*) ;
 int ahc_run_tqinfifo (struct ahc_softc*,int ) ;
 int stub1 (struct ahc_softc*) ;

int
ahc_intr(struct ahc_softc *ahc)
{
 u_int intstat;

 if ((ahc->pause & INTEN) == 0) {






  return (0);
 }






 if ((ahc->flags & (AHC_ALL_INTERRUPTS|AHC_EDGE_INTERRUPT)) == 0
  && (ahc_check_cmdcmpltqueues(ahc) != 0))
  intstat = CMDCMPLT;
 else {
  intstat = ahc_inb(ahc, INTSTAT);
 }

 if ((intstat & INT_PEND) == 0) {
  ahc->unsolicited_ints++;
  return (0);
 }
 ahc->unsolicited_ints = 0;

 if (intstat & CMDCMPLT) {
  ahc_outb(ahc, CLRINT, CLRCMDINT);
  ahc_flush_device_writes(ahc);
  ahc_run_qoutfifo(ahc);




 }





 if (intstat == 0xFF && (ahc->features & AHC_REMOVABLE) != 0) {

 } else if (intstat & BRKADRINT) {
  ahc_handle_brkadrint(ahc);
 } else if ((intstat & (SEQINT|SCSIINT)) != 0) {

  ahc_pause_bug_fix(ahc);

  if ((intstat & SEQINT) != 0)
   ahc_handle_seqint(ahc, intstat);

  if ((intstat & SCSIINT) != 0)
   ahc_handle_scsiint(ahc, intstat);
 }
 return (1);
}
