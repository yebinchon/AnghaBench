
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct controller {int state_lock; int state; TYPE_1__* pcie; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {TYPE_2__* port; } ;


 scalar_t__ ATTN_BUTTN (struct controller*) ;
 int INDICATOR_NOOP ;
 int OFF_STATE ;
 int ON_STATE ;
 int PCI_EXP_SLTCTL_PWR_IND_OFF ;
 int __pciehp_enable_slot (struct controller*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pciehp_set_indicators (struct controller*,int ,int ) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;

__attribute__((used)) static int pciehp_enable_slot(struct controller *ctrl)
{
 int ret;

 pm_runtime_get_sync(&ctrl->pcie->port->dev);
 ret = __pciehp_enable_slot(ctrl);
 if (ret && ATTN_BUTTN(ctrl))

  pciehp_set_indicators(ctrl, PCI_EXP_SLTCTL_PWR_IND_OFF,
          INDICATOR_NOOP);
 pm_runtime_put(&ctrl->pcie->port->dev);

 mutex_lock(&ctrl->state_lock);
 ctrl->state = ret ? OFF_STATE : ON_STATE;
 mutex_unlock(&ctrl->state_lock);

 return ret;
}
