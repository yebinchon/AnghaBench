
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int state; int request_result; int state_lock; int button_work; } ;




 int POWEROFF_STATE ;
 int SAFE_REMOVAL ;
 int cancel_delayed_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pciehp_disable_slot (struct controller*,int ) ;

void pciehp_handle_disable_request(struct controller *ctrl)
{
 mutex_lock(&ctrl->state_lock);
 switch (ctrl->state) {
 case 128:
 case 129:
  cancel_delayed_work(&ctrl->button_work);
  break;
 }
 ctrl->state = POWEROFF_STATE;
 mutex_unlock(&ctrl->state_lock);

 ctrl->request_result = pciehp_disable_slot(ctrl, SAFE_REMOVAL);
}
