
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct aac_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int __aac_shutdown (struct aac_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int scsi_block_requests (struct Scsi_Host*) ;

__attribute__((used)) static void aac_shutdown(struct pci_dev *dev)
{
 struct Scsi_Host *shost = pci_get_drvdata(dev);
 scsi_block_requests(shost);
 __aac_shutdown((struct aac_dev *)shost->hostdata);
}
