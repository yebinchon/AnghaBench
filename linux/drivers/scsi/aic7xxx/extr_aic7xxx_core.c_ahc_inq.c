
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u_int ;
struct ahc_softc {int dummy; } ;


 int ahc_inb (struct ahc_softc*,scalar_t__) ;

uint64_t
ahc_inq(struct ahc_softc *ahc, u_int port)
{
 return ((ahc_inb(ahc, port))
       | (ahc_inb(ahc, port+1) << 8)
       | (ahc_inb(ahc, port+2) << 16)
       | (ahc_inb(ahc, port+3) << 24)
       | (((uint64_t)ahc_inb(ahc, port+4)) << 32)
       | (((uint64_t)ahc_inb(ahc, port+5)) << 40)
       | (((uint64_t)ahc_inb(ahc, port+6)) << 48)
       | (((uint64_t)ahc_inb(ahc, port+7)) << 56));
}
