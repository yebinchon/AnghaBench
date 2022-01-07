
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;


 int HCNTRL ;
 int PAUSE ;
 int ahd_inb (struct ahd_softc*,int ) ;

int
ahd_is_paused(struct ahd_softc *ahd)
{
 return ((ahd_inb(ahd, HCNTRL) & PAUSE) != 0);
}
