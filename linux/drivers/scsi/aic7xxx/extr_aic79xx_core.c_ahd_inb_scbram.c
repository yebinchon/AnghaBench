
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int bugs; } ;


 int AHD_PCIX_SCBRAM_RD_BUG ;
 int MODE_PTR ;
 int ahd_inb (struct ahd_softc*,int ) ;

u_int
ahd_inb_scbram(struct ahd_softc *ahd, u_int offset)
{
 u_int value;
 value = ahd_inb(ahd, offset);
 if ((ahd->bugs & AHD_PCIX_SCBRAM_RD_BUG) != 0)
  ahd_inb(ahd, MODE_PTR);
 return (value);
}
