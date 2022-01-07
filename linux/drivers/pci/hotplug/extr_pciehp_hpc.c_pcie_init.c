
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct pcie_device {struct pci_dev* port; } ;
struct pci_dev {scalar_t__ broken_cmd_compl; scalar_t__ is_thunderbolt; scalar_t__ hotplug_user_indicators; struct pci_bus* subordinate; } ;
struct pci_bus {int devices; } ;
struct controller {int slot_cap; int state; int button_work; int queue; int requester; int reset_lock; int state_lock; int ctrl_lock; struct pcie_device* pcie; } ;


 int FLAG (int,int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int OFF_STATE ;
 int ON_STATE ;
 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_DLLLARC ;
 int PCI_EXP_SLTCAP ;
 int PCI_EXP_SLTCAP_ABP ;
 int PCI_EXP_SLTCAP_AIP ;
 int PCI_EXP_SLTCAP_EIP ;
 int PCI_EXP_SLTCAP_HPC ;
 int PCI_EXP_SLTCAP_HPS ;
 int PCI_EXP_SLTCAP_MRLSP ;
 int PCI_EXP_SLTCAP_NCCS ;
 int PCI_EXP_SLTCAP_PCP ;
 int PCI_EXP_SLTCAP_PIP ;
 int PCI_EXP_SLTCAP_PSN ;
 int PCI_EXP_SLTSTA ;
 int PCI_EXP_SLTSTA_ABP ;
 int PCI_EXP_SLTSTA_CC ;
 int PCI_EXP_SLTSTA_DLLSC ;
 int PCI_EXP_SLTSTA_MRLSC ;
 int PCI_EXP_SLTSTA_PDC ;
 int PCI_EXP_SLTSTA_PFD ;
 scalar_t__ POWER_CTRL (struct controller*) ;
 int ctrl_info (struct controller*,char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,char*) ;
 int dbg_ctrl (struct controller*) ;
 int down_read (int *) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 struct controller* kzalloc (int,int ) ;
 scalar_t__ list_empty (int *) ;
 int mutex_init (int *) ;
 int pci_bus_sem ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int) ;
 int pcie_disable_notification (struct controller*) ;
 int pciehp_card_present_or_link_active (struct controller*) ;
 int pciehp_get_power_status (struct controller*,scalar_t__*) ;
 int pciehp_power_off_slot (struct controller*) ;
 int pciehp_queue_pushbutton_work ;
 int up_read (int *) ;

struct controller *pcie_init(struct pcie_device *dev)
{
 struct controller *ctrl;
 u32 slot_cap, link_cap;
 u8 poweron;
 struct pci_dev *pdev = dev->port;
 struct pci_bus *subordinate = pdev->subordinate;

 ctrl = kzalloc(sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  return ((void*)0);

 ctrl->pcie = dev;
 pcie_capability_read_dword(pdev, PCI_EXP_SLTCAP, &slot_cap);

 if (pdev->hotplug_user_indicators)
  slot_cap &= ~(PCI_EXP_SLTCAP_AIP | PCI_EXP_SLTCAP_PIP);





 if (pdev->is_thunderbolt)
  slot_cap |= PCI_EXP_SLTCAP_NCCS;

 ctrl->slot_cap = slot_cap;
 mutex_init(&ctrl->ctrl_lock);
 mutex_init(&ctrl->state_lock);
 init_rwsem(&ctrl->reset_lock);
 init_waitqueue_head(&ctrl->requester);
 init_waitqueue_head(&ctrl->queue);
 INIT_DELAYED_WORK(&ctrl->button_work, pciehp_queue_pushbutton_work);
 dbg_ctrl(ctrl);

 down_read(&pci_bus_sem);
 ctrl->state = list_empty(&subordinate->devices) ? OFF_STATE : ON_STATE;
 up_read(&pci_bus_sem);


 pcie_capability_read_dword(pdev, PCI_EXP_LNKCAP, &link_cap);


 pcie_capability_write_word(pdev, PCI_EXP_SLTSTA,
  PCI_EXP_SLTSTA_ABP | PCI_EXP_SLTSTA_PFD |
  PCI_EXP_SLTSTA_MRLSC | PCI_EXP_SLTSTA_CC |
  PCI_EXP_SLTSTA_DLLSC | PCI_EXP_SLTSTA_PDC);

 ctrl_info(ctrl, "Slot #%d AttnBtn%c PwrCtrl%c MRL%c AttnInd%c PwrInd%c HotPlug%c Surprise%c Interlock%c NoCompl%c LLActRep%c%s\n",
  (slot_cap & PCI_EXP_SLTCAP_PSN) >> 19,
  FLAG(slot_cap, PCI_EXP_SLTCAP_ABP),
  FLAG(slot_cap, PCI_EXP_SLTCAP_PCP),
  FLAG(slot_cap, PCI_EXP_SLTCAP_MRLSP),
  FLAG(slot_cap, PCI_EXP_SLTCAP_AIP),
  FLAG(slot_cap, PCI_EXP_SLTCAP_PIP),
  FLAG(slot_cap, PCI_EXP_SLTCAP_HPC),
  FLAG(slot_cap, PCI_EXP_SLTCAP_HPS),
  FLAG(slot_cap, PCI_EXP_SLTCAP_EIP),
  FLAG(slot_cap, PCI_EXP_SLTCAP_NCCS),
  FLAG(link_cap, PCI_EXP_LNKCAP_DLLLARC),
  pdev->broken_cmd_compl ? " (with Cmd Compl erratum)" : "");





 if (POWER_CTRL(ctrl)) {
  pciehp_get_power_status(ctrl, &poweron);
  if (!pciehp_card_present_or_link_active(ctrl) && poweron) {
   pcie_disable_notification(ctrl);
   pciehp_power_off_slot(ctrl);
  }
 }

 return ctrl;
}
