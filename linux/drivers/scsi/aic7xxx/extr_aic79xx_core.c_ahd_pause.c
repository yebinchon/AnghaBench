
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int pause; } ;


 int HCNTRL ;
 scalar_t__ ahd_is_paused (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int ) ;

void
ahd_pause(struct ahd_softc *ahd)
{
 ahd_outb(ahd, HCNTRL, ahd->pause);





 while (ahd_is_paused(ahd) == 0)
  ;
}
