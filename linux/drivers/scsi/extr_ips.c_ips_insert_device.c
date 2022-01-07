
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int ENODEV ;
 int METHOD_TRACE (char*,int) ;
 int SUCCESS ;
 int ips_free (int ) ;
 int * ips_ha ;
 scalar_t__ ips_hotplug ;
 int ips_init_phase1 (struct pci_dev*,int*) ;
 int ips_init_phase2 (int) ;
 scalar_t__ ips_next_controller ;
 scalar_t__ ips_num_controllers ;
 scalar_t__ ips_register_scsi (int) ;
 int * ips_sh ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 int pci_set_drvdata (struct pci_dev*,int ) ;

__attribute__((used)) static int
ips_insert_device(struct pci_dev *pci_dev, const struct pci_device_id *ent)
{
 int index = -1;
 int rc;

 METHOD_TRACE("ips_insert_device", 1);
 rc = pci_enable_device(pci_dev);
 if (rc)
  return rc;

 rc = pci_request_regions(pci_dev, "ips");
 if (rc)
  goto err_out;

 rc = ips_init_phase1(pci_dev, &index);
 if (rc == SUCCESS)
  rc = ips_init_phase2(index);

 if (ips_hotplug)
  if (ips_register_scsi(index)) {
   ips_free(ips_ha[index]);
   rc = -1;
  }

 if (rc == SUCCESS)
  ips_num_controllers++;

 ips_next_controller = ips_num_controllers;

 if (rc < 0) {
  rc = -ENODEV;
  goto err_out_regions;
 }

 pci_set_drvdata(pci_dev, ips_sh[index]);
 return 0;

err_out_regions:
 pci_release_regions(pci_dev);
err_out:
 pci_disable_device(pci_dev);
 return rc;
}
