
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int device; int cdev; int fault_inject; } ;


 int cdev_device_del (int *,int ) ;
 int dev_pm_qos_hide_latency_tolerance (int ) ;
 int nvme_fault_inject_fini (int *) ;

void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
{
 nvme_fault_inject_fini(&ctrl->fault_inject);
 dev_pm_qos_hide_latency_tolerance(ctrl->device);
 cdev_device_del(&ctrl->cdev, ctrl->device);
}
