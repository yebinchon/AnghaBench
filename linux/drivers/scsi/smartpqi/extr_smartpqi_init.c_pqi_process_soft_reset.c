
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {int ctrl_id; TYPE_1__* pci_dev; } ;
typedef enum pqi_soft_reset_status { ____Placeholder_pqi_soft_reset_status } pqi_soft_reset_status ;
struct TYPE_2__ {int dev; } ;







 int dev_info (int *,char*,int ,...) ;
 int pqi_ofa_ctrl_restart (struct pqi_ctrl_info*) ;
 int pqi_ofa_ctrl_unquiesce (struct pqi_ctrl_info*) ;
 int pqi_ofa_free_host_buffer (struct pqi_ctrl_info*) ;
 int pqi_take_ctrl_offline (struct pqi_ctrl_info*) ;
 int sis_soft_reset (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_process_soft_reset(struct pqi_ctrl_info *ctrl_info,
  enum pqi_soft_reset_status reset_status)
{
 int rc;

 switch (reset_status) {
 case 131:

 case 128:
  dev_info(&ctrl_info->pci_dev->dev,
   "resetting controller %u\n", ctrl_info->ctrl_id);
  sis_soft_reset(ctrl_info);

 case 130:
  rc = pqi_ofa_ctrl_restart(ctrl_info);
  pqi_ofa_free_host_buffer(ctrl_info);
  dev_info(&ctrl_info->pci_dev->dev,
   "Online Firmware Activation for controller %u: %s\n",
   ctrl_info->ctrl_id, rc == 0 ? "SUCCESS" : "FAILED");
  break;
 case 132:
  pqi_ofa_ctrl_unquiesce(ctrl_info);
  dev_info(&ctrl_info->pci_dev->dev,
   "Online Firmware Activation for controller %u: %s\n",
   ctrl_info->ctrl_id, "ABORTED");
  break;
 case 129:
  pqi_ofa_free_host_buffer(ctrl_info);
  pqi_take_ctrl_offline(ctrl_info);
  break;
 }
}
