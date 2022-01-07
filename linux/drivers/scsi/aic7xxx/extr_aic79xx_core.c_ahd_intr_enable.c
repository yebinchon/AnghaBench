
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int unpause; int pause; } ;


 int HCNTRL ;
 int INTEN ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_outb (struct ahd_softc*,int ,int ) ;

void
ahd_intr_enable(struct ahd_softc *ahd, int enable)
{
 u_int hcntrl;

 hcntrl = ahd_inb(ahd, HCNTRL);
 hcntrl &= ~INTEN;
 ahd->pause &= ~INTEN;
 ahd->unpause &= ~INTEN;
 if (enable) {
  hcntrl |= INTEN;
  ahd->pause |= INTEN;
  ahd->unpause |= INTEN;
 }
 ahd_outb(ahd, HCNTRL, hcntrl);
}
