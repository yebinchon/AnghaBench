
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {int dummy; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int __pvscsi_shutdown (struct pvscsi_adapter*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 struct pvscsi_adapter* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void pvscsi_shutdown(struct pci_dev *dev)
{
 struct Scsi_Host *host = pci_get_drvdata(dev);
 struct pvscsi_adapter *adapter = shost_priv(host);

 __pvscsi_shutdown(adapter);
}
