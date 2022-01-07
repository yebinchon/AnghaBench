
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int DSPCISTATUS ;
 int FALSE ;
 int SCSICONF ;
 int SCSISEQ ;
 int SXFRCTL0 ;
 int TARG_SCSIRATE ;
 int ahc_outb (struct ahc_softc*,int,int ) ;
 int ahc_reset (struct ahc_softc*,int ) ;

__attribute__((used)) static void
ahc_shutdown(void *arg)
{
 struct ahc_softc *ahc;
 int i;

 ahc = (struct ahc_softc *)arg;


 ahc_reset(ahc, FALSE);
 ahc_outb(ahc, SCSISEQ, 0);
 ahc_outb(ahc, SXFRCTL0, 0);
 ahc_outb(ahc, DSPCISTATUS, 0);

 for (i = TARG_SCSIRATE; i < SCSICONF; i++)
  ahc_outb(ahc, i, 0);
}
