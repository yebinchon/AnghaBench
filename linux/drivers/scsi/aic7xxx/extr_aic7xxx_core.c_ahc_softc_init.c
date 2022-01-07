
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int chip; int unpause; int pause; int * scb_data; } ;


 int AHC_PCI ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int HCNTRL ;
 int IRQMS ;
 int PAUSE ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int * kzalloc (int,int ) ;

int
ahc_softc_init(struct ahc_softc *ahc)
{


 if ((ahc->chip & AHC_PCI) == 0)
  ahc->unpause = ahc_inb(ahc, HCNTRL) & IRQMS;
 else
  ahc->unpause = 0;
 ahc->pause = ahc->unpause | PAUSE;

 if (ahc->scb_data == ((void*)0)) {
  ahc->scb_data = kzalloc(sizeof(*ahc->scb_data), GFP_ATOMIC);
  if (ahc->scb_data == ((void*)0))
   return (ENOMEM);
 }

 return (0);
}
