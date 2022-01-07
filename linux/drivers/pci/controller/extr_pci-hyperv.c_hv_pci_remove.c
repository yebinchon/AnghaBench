
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; int fwnode; } ;
struct hv_pcibus_device {scalar_t__ state; TYPE_1__ sysdata; int wq; int remove_event; int irq_domain; int resources_for_children; int cfg_addr; int pci_bus; } ;
struct hv_device {int channel; } ;


 int destroy_workqueue (int ) ;
 int free_page (unsigned long) ;
 int hv_free_config_window (struct hv_pcibus_device*) ;
 struct hv_pcibus_device* hv_get_drvdata (struct hv_device*) ;
 int hv_pci_bus_exit (struct hv_device*) ;
 int hv_pci_free_bridge_windows (struct hv_pcibus_device*) ;
 int hv_pci_remove_slots (struct hv_pcibus_device*) ;
 scalar_t__ hv_pcibus_installed ;
 scalar_t__ hv_pcibus_removed ;
 int hv_put_dom_num (int ) ;
 int iounmap (int ) ;
 int irq_domain_free_fwnode (int ) ;
 int irq_domain_remove (int ) ;
 int pci_free_resource_list (int *) ;
 int pci_lock_rescan_remove () ;
 int pci_remove_root_bus (int ) ;
 int pci_stop_root_bus (int ) ;
 int pci_unlock_rescan_remove () ;
 int put_hvpcibus (struct hv_pcibus_device*) ;
 int vmbus_close (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int hv_pci_remove(struct hv_device *hdev)
{
 struct hv_pcibus_device *hbus;

 hbus = hv_get_drvdata(hdev);
 if (hbus->state == hv_pcibus_installed) {

  pci_lock_rescan_remove();
  pci_stop_root_bus(hbus->pci_bus);
  hv_pci_remove_slots(hbus);
  pci_remove_root_bus(hbus->pci_bus);
  pci_unlock_rescan_remove();
  hbus->state = hv_pcibus_removed;
 }

 hv_pci_bus_exit(hdev);

 vmbus_close(hdev->channel);

 iounmap(hbus->cfg_addr);
 hv_free_config_window(hbus);
 pci_free_resource_list(&hbus->resources_for_children);
 hv_pci_free_bridge_windows(hbus);
 irq_domain_remove(hbus->irq_domain);
 irq_domain_free_fwnode(hbus->sysdata.fwnode);
 put_hvpcibus(hbus);
 wait_for_completion(&hbus->remove_event);
 destroy_workqueue(hbus->wq);

 hv_put_dom_num(hbus->sysdata.domain);

 free_page((unsigned long)hbus);
 return 0;
}
