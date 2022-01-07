
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct controller {int state_lock; int state; TYPE_2__* pcie; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {int dev; } ;


 int OFF_STATE ;
 int __pciehp_disable_slot (struct controller*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;

__attribute__((used)) static int pciehp_disable_slot(struct controller *ctrl, bool safe_removal)
{
 int ret;

 pm_runtime_get_sync(&ctrl->pcie->port->dev);
 ret = __pciehp_disable_slot(ctrl, safe_removal);
 pm_runtime_put(&ctrl->pcie->port->dev);

 mutex_lock(&ctrl->state_lock);
 ctrl->state = OFF_STATE;
 mutex_unlock(&ctrl->state_lock);

 return ret;
}
