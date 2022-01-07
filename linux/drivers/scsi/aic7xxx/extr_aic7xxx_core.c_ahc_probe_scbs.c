
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int AHC_SCB_MAX ;
 int SCBPTR ;
 int SCB_BASE ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;

int
ahc_probe_scbs(struct ahc_softc *ahc) {
 int i;

 for (i = 0; i < AHC_SCB_MAX; i++) {

  ahc_outb(ahc, SCBPTR, i);
  ahc_outb(ahc, SCB_BASE, i);
  if (ahc_inb(ahc, SCB_BASE) != i)
   break;
  ahc_outb(ahc, SCBPTR, 0);
  if (ahc_inb(ahc, SCB_BASE) != 0)
   break;
 }
 return (i);
}
