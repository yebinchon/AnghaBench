
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct esas2r_adapter {int index; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int ESAS2R_LOG_INFO ;
 int esas2r_kill_adapter (int ) ;
 int esas2r_log_dev (int ,int *,char*,struct pci_dev*,struct Scsi_Host*) ;
 int found_adapters ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void esas2r_remove(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 struct esas2r_adapter *a = (struct esas2r_adapter *)host->hostdata;

 esas2r_log_dev(ESAS2R_LOG_INFO, &(pdev->dev),
         "esas2r_remove(%p) called; "
         "host:%p", pdev,
         host);

 esas2r_kill_adapter(a->index);
 found_adapters--;
}
