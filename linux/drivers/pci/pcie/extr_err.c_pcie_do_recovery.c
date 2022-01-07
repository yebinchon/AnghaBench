
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {struct pci_bus* subordinate; TYPE_1__* bus; } ;
struct pci_bus {int dummy; } ;
typedef scalar_t__ pci_ers_result_t ;
typedef enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;
struct TYPE_2__ {struct pci_dev* self; } ;


 scalar_t__ PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_DISCONNECT ;
 scalar_t__ PCI_ERS_RESULT_NEED_RESET ;
 scalar_t__ PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 int pci_aer_clear_device_status (struct pci_dev*) ;
 int pci_channel_io_frozen ;
 int pci_cleanup_aer_uncorrect_error_status (struct pci_dev*) ;
 int pci_dbg (struct pci_dev*,char*) ;
 int pci_info (struct pci_dev*,char*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pci_uevent_ers (struct pci_dev*,int ) ;
 int pci_walk_bus (struct pci_bus*,int ,scalar_t__*) ;
 int report_frozen_detected ;
 int report_mmio_enabled ;
 int report_normal_detected ;
 int report_resume ;
 int report_slot_reset ;
 scalar_t__ reset_link (struct pci_dev*,int ) ;

void pcie_do_recovery(struct pci_dev *dev, enum pci_channel_state state,
        u32 service)
{
 pci_ers_result_t status = PCI_ERS_RESULT_CAN_RECOVER;
 struct pci_bus *bus;





 if (!(pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT ||
       pci_pcie_type(dev) == PCI_EXP_TYPE_DOWNSTREAM))
  dev = dev->bus->self;
 bus = dev->subordinate;

 pci_dbg(dev, "broadcast error_detected message\n");
 if (state == pci_channel_io_frozen)
  pci_walk_bus(bus, report_frozen_detected, &status);
 else
  pci_walk_bus(bus, report_normal_detected, &status);

 if (state == pci_channel_io_frozen &&
     reset_link(dev, service) != PCI_ERS_RESULT_RECOVERED)
  goto failed;

 if (status == PCI_ERS_RESULT_CAN_RECOVER) {
  status = PCI_ERS_RESULT_RECOVERED;
  pci_dbg(dev, "broadcast mmio_enabled message\n");
  pci_walk_bus(bus, report_mmio_enabled, &status);
 }

 if (status == PCI_ERS_RESULT_NEED_RESET) {





  status = PCI_ERS_RESULT_RECOVERED;
  pci_dbg(dev, "broadcast slot_reset message\n");
  pci_walk_bus(bus, report_slot_reset, &status);
 }

 if (status != PCI_ERS_RESULT_RECOVERED)
  goto failed;

 pci_dbg(dev, "broadcast resume message\n");
 pci_walk_bus(bus, report_resume, &status);

 pci_aer_clear_device_status(dev);
 pci_cleanup_aer_uncorrect_error_status(dev);
 pci_info(dev, "AER: Device recovery successful\n");
 return;

failed:
 pci_uevent_ers(dev, PCI_ERS_RESULT_DISCONNECT);


 pci_info(dev, "AER: Device recovery failed\n");
}
