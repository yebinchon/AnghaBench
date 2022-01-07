
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dev_softc; } ;
typedef scalar_t__ resource_size_t ;


 int ENOMEM ;
 scalar_t__ pci_resource_start (int ,int) ;
 int release_region (scalar_t__,int) ;
 int request_region (scalar_t__,int,char*) ;

__attribute__((used)) static int
ahd_linux_pci_reserve_io_regions(struct ahd_softc *ahd, resource_size_t *base,
     resource_size_t *base2)
{
 *base = pci_resource_start(ahd->dev_softc, 0);





 *base2 = pci_resource_start(ahd->dev_softc, 3);
 if (*base == 0 || *base2 == 0)
  return (ENOMEM);
 if (!request_region(*base, 256, "aic79xx"))
  return (ENOMEM);
 if (!request_region(*base2, 256, "aic79xx")) {
  release_region(*base, 256);
  return (ENOMEM);
 }
 return (0);
}
