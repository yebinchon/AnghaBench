
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {int dummy; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int __pvscsi_shutdown (struct pvscsi_adapter*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pvscsi_release_resources (struct pvscsi_adapter*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 struct pvscsi_adapter* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void pvscsi_remove(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 struct pvscsi_adapter *adapter = shost_priv(host);

 scsi_remove_host(host);

 __pvscsi_shutdown(adapter);
 pvscsi_release_resources(adapter);

 scsi_host_put(host);

 pci_disable_device(pdev);
}
