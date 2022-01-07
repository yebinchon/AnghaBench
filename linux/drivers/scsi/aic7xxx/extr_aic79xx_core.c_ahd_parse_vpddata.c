
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpd_config {int bios_flags; } ;
struct ahd_softc {int flags; } ;


 int AHD_BOOT_CHANNEL ;
 int EINVAL ;
 int VPDBOOTHOST ;
 int ahd_verify_vpd_cksum (struct vpd_config*) ;

int
ahd_parse_vpddata(struct ahd_softc *ahd, struct vpd_config *vpd)
{
 int error;

 error = ahd_verify_vpd_cksum(vpd);
 if (error == 0)
  return (EINVAL);
 if ((vpd->bios_flags & VPDBOOTHOST) != 0)
  ahd->flags |= AHD_BOOT_CHANNEL;
 return (0);
}
