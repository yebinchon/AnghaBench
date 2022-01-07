
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int NSP32_DEBUG_REGISTER ;
 int nsp32_dbg (int ,char*) ;
 int nsp32_release (struct Scsi_Host*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static void nsp32_remove(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);

 nsp32_dbg(NSP32_DEBUG_REGISTER, "enter");

        scsi_remove_host(host);

 nsp32_release(host);

 scsi_host_put(host);
}
