
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_4__ {int host; int base_addr; int flags; } ;
typedef TYPE_1__ TW_Device_Extension ;


 int TW_USING_MSI ;
 int __twa_shutdown (TYPE_1__*) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int twa_device_extension_count ;
 int twa_free_device_extension (TYPE_1__*) ;
 int twa_major ;
 int unregister_chrdev (int,char*) ;

__attribute__((used)) static void twa_remove(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 TW_Device_Extension *tw_dev = (TW_Device_Extension *)host->hostdata;

 scsi_remove_host(tw_dev->host);


 if (twa_major >= 0) {
  unregister_chrdev(twa_major, "twa");
  twa_major = -1;
 }


 __twa_shutdown(tw_dev);


 if (test_bit(TW_USING_MSI, &tw_dev->flags))
  pci_disable_msi(pdev);


 iounmap(tw_dev->base_addr);


 pci_release_regions(pdev);


 twa_free_device_extension(tw_dev);

 scsi_host_put(tw_dev->host);
 pci_disable_device(pdev);
 twa_device_extension_count--;
}
