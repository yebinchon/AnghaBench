
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int flags; } ;


 int AHC_PAGESCBS ;
 int FREE_SCBH ;
 int SCBPTR ;
 int SCB_LIST_NULL ;
 int SCB_NEXT ;
 int SCB_TAG ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int ) ;

__attribute__((used)) static void
ahc_add_curscb_to_free_list(struct ahc_softc *ahc)
{




 ahc_outb(ahc, SCB_TAG, SCB_LIST_NULL);

 if ((ahc->flags & AHC_PAGESCBS) != 0) {
  ahc_outb(ahc, SCB_NEXT, ahc_inb(ahc, FREE_SCBH));
  ahc_outb(ahc, FREE_SCBH, ahc_inb(ahc, SCBPTR));
 }
}
