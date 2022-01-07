
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahc_softc {int dummy; } ;


 int ahc_inb (struct ahc_softc*,long) ;

void
ahc_insb(struct ahc_softc * ahc, long port, uint8_t *array, int count)
{
 int i;






 for (i = 0; i < count; i++)
  *array++ = ahc_inb(ahc, port);
}
