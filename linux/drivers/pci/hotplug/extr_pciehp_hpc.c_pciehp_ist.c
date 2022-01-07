
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct controller {int power_fault_detected; int requester; int reset_lock; int pending_events; } ;
typedef int irqreturn_t ;


 int DISABLE_SLOT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int PCI_EXP_SLTCTL_ATTN_IND_ON ;
 int PCI_EXP_SLTCTL_PWR_IND_OFF ;
 int PCI_EXP_SLTSTA_ABP ;
 int PCI_EXP_SLTSTA_DLLSC ;
 int PCI_EXP_SLTSTA_PDC ;
 int PCI_EXP_SLTSTA_PFD ;
 int RERUN_ISR ;
 int atomic_fetch_and (int,int *) ;
 int atomic_xchg (int *,int ) ;
 struct pci_dev* ctrl_dev (struct controller*) ;
 int ctrl_err (struct controller*,char*,int ) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int down_read (int *) ;
 int enable_irq (int) ;
 int pci_config_pm_runtime_get (struct pci_dev*) ;
 int pci_config_pm_runtime_put (struct pci_dev*) ;
 int pciehp_handle_button_press (struct controller*) ;
 int pciehp_handle_disable_request (struct controller*) ;
 int pciehp_handle_presence_or_link_change (struct controller*,int) ;
 int pciehp_isr (int,void*) ;
 int pciehp_set_indicators (struct controller*,int ,int ) ;
 int slot_name (struct controller*) ;
 int synchronize_hardirq (int) ;
 int up_read (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t pciehp_ist(int irq, void *dev_id)
{
 struct controller *ctrl = (struct controller *)dev_id;
 struct pci_dev *pdev = ctrl_dev(ctrl);
 irqreturn_t ret;
 u32 events;

 pci_config_pm_runtime_get(pdev);


 if (atomic_fetch_and(~RERUN_ISR, &ctrl->pending_events) & RERUN_ISR) {
  ret = pciehp_isr(irq, dev_id);
  enable_irq(irq);
  if (ret != IRQ_WAKE_THREAD) {
   pci_config_pm_runtime_put(pdev);
   return ret;
  }
 }

 synchronize_hardirq(irq);
 events = atomic_xchg(&ctrl->pending_events, 0);
 if (!events) {
  pci_config_pm_runtime_put(pdev);
  return IRQ_NONE;
 }


 if (events & PCI_EXP_SLTSTA_ABP) {
  ctrl_info(ctrl, "Slot(%s): Attention button pressed\n",
     slot_name(ctrl));
  pciehp_handle_button_press(ctrl);
 }


 if ((events & PCI_EXP_SLTSTA_PFD) && !ctrl->power_fault_detected) {
  ctrl->power_fault_detected = 1;
  ctrl_err(ctrl, "Slot(%s): Power fault\n", slot_name(ctrl));
  pciehp_set_indicators(ctrl, PCI_EXP_SLTCTL_PWR_IND_OFF,
          PCI_EXP_SLTCTL_ATTN_IND_ON);
 }





 down_read(&ctrl->reset_lock);
 if (events & DISABLE_SLOT)
  pciehp_handle_disable_request(ctrl);
 else if (events & (PCI_EXP_SLTSTA_PDC | PCI_EXP_SLTSTA_DLLSC))
  pciehp_handle_presence_or_link_change(ctrl, events);
 up_read(&ctrl->reset_lock);

 pci_config_pm_runtime_put(pdev);
 wake_up(&ctrl->requester);
 return IRQ_HANDLED;
}
