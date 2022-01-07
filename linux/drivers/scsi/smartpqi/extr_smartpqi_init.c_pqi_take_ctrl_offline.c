
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {int controller_online; int pqi_mode_enabled; int ctrl_offline_work; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int pci_disable_device (TYPE_1__*) ;
 int pqi_ctrl_block_requests (struct pqi_ctrl_info*) ;
 int pqi_disable_ctrl_shutdown ;
 int schedule_work (int *) ;
 int sis_shutdown_ctrl (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_take_ctrl_offline(struct pqi_ctrl_info *ctrl_info)
{
 if (!ctrl_info->controller_online)
  return;

 ctrl_info->controller_online = 0;
 ctrl_info->pqi_mode_enabled = 0;
 pqi_ctrl_block_requests(ctrl_info);
 if (!pqi_disable_ctrl_shutdown)
  sis_shutdown_ctrl(ctrl_info);
 pci_disable_device(ctrl_info->pci_dev);
 dev_err(&ctrl_info->pci_dev->dev, "controller offline\n");
 schedule_work(&ctrl_info->ctrl_offline_work);
}
