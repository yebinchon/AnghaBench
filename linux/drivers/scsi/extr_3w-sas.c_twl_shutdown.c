
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_3__ {scalar_t__ online; } ;
typedef TYPE_1__ TW_Device_Extension ;


 int __twl_shutdown (TYPE_1__*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void twl_shutdown(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 TW_Device_Extension *tw_dev;

 if (!host)
  return;

 tw_dev = (TW_Device_Extension *)host->hostdata;

 if (tw_dev->online)
  __twl_shutdown(tw_dev);
}
