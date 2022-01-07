
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_5__ {int kobj; } ;
struct Scsi_Host {TYPE_1__ shost_dev; scalar_t__ hostdata; } ;
struct TYPE_6__ {int host; int base_addr; int flags; int online; } ;
typedef TYPE_2__ TW_Device_Extension ;


 int TW_USING_MSI ;
 int __twl_shutdown (TYPE_2__*) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 int sysfs_remove_bin_file (int *,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int twl_device_extension_count ;
 int twl_free_device_extension (TYPE_2__*) ;
 int twl_major ;
 int twl_sysfs_aen_read_attr ;
 int twl_sysfs_compat_info_attr ;
 int unregister_chrdev (int,char*) ;

__attribute__((used)) static void twl_remove(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 TW_Device_Extension *tw_dev;

 if (!host)
  return;

 tw_dev = (TW_Device_Extension *)host->hostdata;

 if (!tw_dev->online)
  return;


 sysfs_remove_bin_file(&host->shost_dev.kobj, &twl_sysfs_aen_read_attr);
 sysfs_remove_bin_file(&host->shost_dev.kobj, &twl_sysfs_compat_info_attr);

 scsi_remove_host(tw_dev->host);


 if (twl_major >= 0) {
  unregister_chrdev(twl_major, "twl");
  twl_major = -1;
 }


 __twl_shutdown(tw_dev);


 if (test_bit(TW_USING_MSI, &tw_dev->flags))
  pci_disable_msi(pdev);


 iounmap(tw_dev->base_addr);


 pci_release_regions(pdev);


 twl_free_device_extension(tw_dev);

 scsi_host_put(tw_dev->host);
 pci_disable_device(pdev);
 twl_device_extension_count--;
}
