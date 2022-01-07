
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hotplug_slot_ops {int set_attention_status; int get_attention_status; int get_latch_status; int reset_slot; int get_adapter_status; int get_power_status; int disable_slot; int enable_slot; } ;
struct TYPE_6__ {struct hotplug_slot_ops* ops; } ;
struct controller {TYPE_2__* pcie; TYPE_3__ hotplug_slot; } ;
struct TYPE_5__ {TYPE_1__* port; } ;
struct TYPE_4__ {int subordinate; scalar_t__ hotplug_user_indicators; } ;


 scalar_t__ ATTN_LED (struct controller*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MRL_SENS (struct controller*) ;
 int PSN (struct controller*) ;
 int SLOT_NAME_SIZE ;
 int ctrl_err (struct controller*,char*,int) ;
 int get_adapter_status ;
 int get_latch_status ;
 int get_power_status ;
 int kfree (struct hotplug_slot_ops*) ;
 struct hotplug_slot_ops* kzalloc (int,int ) ;
 int pci_hp_initialize (TYPE_3__*,int ,int ,char*) ;
 int pciehp_get_attention_status ;
 int pciehp_get_raw_indicator_status ;
 int pciehp_reset_slot ;
 int pciehp_set_raw_indicator_status ;
 int pciehp_sysfs_disable_slot ;
 int pciehp_sysfs_enable_slot ;
 int set_attention_status ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int init_slot(struct controller *ctrl)
{
 struct hotplug_slot_ops *ops;
 char name[SLOT_NAME_SIZE];
 int retval;


 ops = kzalloc(sizeof(*ops), GFP_KERNEL);
 if (!ops)
  return -ENOMEM;

 ops->enable_slot = pciehp_sysfs_enable_slot;
 ops->disable_slot = pciehp_sysfs_disable_slot;
 ops->get_power_status = get_power_status;
 ops->get_adapter_status = get_adapter_status;
 ops->reset_slot = pciehp_reset_slot;
 if (MRL_SENS(ctrl))
  ops->get_latch_status = get_latch_status;
 if (ATTN_LED(ctrl)) {
  ops->get_attention_status = pciehp_get_attention_status;
  ops->set_attention_status = set_attention_status;
 } else if (ctrl->pcie->port->hotplug_user_indicators) {
  ops->get_attention_status = pciehp_get_raw_indicator_status;
  ops->set_attention_status = pciehp_set_raw_indicator_status;
 }


 ctrl->hotplug_slot.ops = ops;
 snprintf(name, SLOT_NAME_SIZE, "%u", PSN(ctrl));

 retval = pci_hp_initialize(&ctrl->hotplug_slot,
       ctrl->pcie->port->subordinate, 0, name);
 if (retval) {
  ctrl_err(ctrl, "pci_hp_initialize failed: error %d\n", retval);
  kfree(ops);
 }
 return retval;
}
