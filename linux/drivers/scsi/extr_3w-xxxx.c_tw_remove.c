
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_4__ {int host; } ;
typedef TYPE_1__ TW_Device_Extension ;


 int __tw_shutdown (TYPE_1__*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 int tw_device_extension_count ;
 int tw_free_device_extension (TYPE_1__*) ;
 int twe_major ;
 int unregister_chrdev (int,char*) ;

__attribute__((used)) static void tw_remove(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 TW_Device_Extension *tw_dev = (TW_Device_Extension *)host->hostdata;

 scsi_remove_host(tw_dev->host);


 if (twe_major >= 0) {
  unregister_chrdev(twe_major, "twe");
  twe_major = -1;
 }


 __tw_shutdown(tw_dev);


 pci_release_regions(pdev);


 tw_free_device_extension(tw_dev);

 scsi_host_put(tw_dev->host);
 pci_disable_device(pdev);
 tw_device_extension_count--;
}
