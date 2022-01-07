
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_device {int is_laddr_valid; int laddr; struct slim_controller* ctrl; } ;
struct slim_controller {int laddr_ida; int lock; } ;


 int SLIM_DEVICE_STATUS_DOWN ;
 int ida_simple_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int slim_device_update_status (struct slim_device*,int ) ;

void slim_report_absent(struct slim_device *sbdev)
{
 struct slim_controller *ctrl = sbdev->ctrl;

 if (!ctrl)
  return;


 mutex_lock(&ctrl->lock);
 sbdev->is_laddr_valid = 0;
 mutex_unlock(&ctrl->lock);

 ida_simple_remove(&ctrl->laddr_ida, sbdev->laddr);
 slim_device_update_status(sbdev, SLIM_DEVICE_STATUS_DOWN);
}
