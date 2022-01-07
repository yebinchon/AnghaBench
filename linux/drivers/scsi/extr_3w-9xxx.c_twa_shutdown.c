
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int TW_Device_Extension ;


 int __twa_shutdown (int *) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void twa_shutdown(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 TW_Device_Extension *tw_dev = (TW_Device_Extension *)host->hostdata;

 __twa_shutdown(tw_dev);
}
