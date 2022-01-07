
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int IRQ_MODE_NONE ;
 int SIS_MODE ;
 int dev_err (int *,char*,int) ;
 int pqi_change_irq_mode (struct pqi_ctrl_info*,int ) ;
 int pqi_reset (struct pqi_ctrl_info*) ;
 int pqi_save_ctrl_mode (struct pqi_ctrl_info*,int ) ;
 int sis_reenable_sis_mode (struct pqi_ctrl_info*) ;

__attribute__((used)) static int pqi_revert_to_sis_mode(struct pqi_ctrl_info *ctrl_info)
{
 int rc;

 pqi_change_irq_mode(ctrl_info, IRQ_MODE_NONE);
 rc = pqi_reset(ctrl_info);
 if (rc)
  return rc;
 rc = sis_reenable_sis_mode(ctrl_info);
 if (rc) {
  dev_err(&ctrl_info->pci_dev->dev,
   "re-enabling SIS mode failed with error %d\n", rc);
  return rc;
 }
 pqi_save_ctrl_mode(ctrl_info, SIS_MODE);

 return 0;
}
