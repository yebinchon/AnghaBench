
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int unit; } ;



void
ahc_set_unit(struct ahc_softc *ahc, int unit)
{
 ahc->unit = unit;
}
