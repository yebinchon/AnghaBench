
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct pci_dev {int dummy; } ;
struct ahd_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {scalar_t__ host; } ;


 int FALSE ;
 int ahd_free (struct ahd_softc*) ;
 int ahd_intr_enable (struct ahd_softc*,int ) ;
 int ahd_lock (struct ahd_softc*,int *) ;
 int ahd_unlock (struct ahd_softc*,int *) ;
 struct ahd_softc* pci_get_drvdata (struct pci_dev*) ;
 int scsi_remove_host (scalar_t__) ;

__attribute__((used)) static void
ahd_linux_pci_dev_remove(struct pci_dev *pdev)
{
 struct ahd_softc *ahd = pci_get_drvdata(pdev);
 u_long s;

 if (ahd->platform_data && ahd->platform_data->host)
   scsi_remove_host(ahd->platform_data->host);

 ahd_lock(ahd, &s);
 ahd_intr_enable(ahd, FALSE);
 ahd_unlock(ahd, &s);
 ahd_free(ahd);
}
