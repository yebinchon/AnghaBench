
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int features; } ;


 int AHC_ULTRA2 ;
 int CCSCBCTL ;
 int ahc_inb (struct ahc_softc*,int ) ;

__attribute__((used)) static void
ahc_pause_bug_fix(struct ahc_softc *ahc)
{
 if ((ahc->features & AHC_ULTRA2) != 0)
  (void)ahc_inb(ahc, CCSCBCTL);
}
