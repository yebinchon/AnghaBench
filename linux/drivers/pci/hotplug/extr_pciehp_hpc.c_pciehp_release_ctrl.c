
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int button_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (struct controller*) ;

void pciehp_release_ctrl(struct controller *ctrl)
{
 cancel_delayed_work_sync(&ctrl->button_work);
 kfree(ctrl);
}
