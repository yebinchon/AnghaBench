
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reset_action; int reset_type; } ;
union pqi_reset_register {scalar_t__ all_bits; TYPE_1__ bits; } ;
struct pqi_ctrl_info {TYPE_3__* pci_dev; TYPE_2__* pqi_registers; scalar_t__ pqi_reset_quiesce_supported; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int device_reset; } ;


 int PQI_RESET_ACTION_RESET ;
 int PQI_RESET_TYPE_HARD_RESET ;
 int dev_err (int *,char*,int) ;
 int pqi_wait_for_pqi_reset_completion (struct pqi_ctrl_info*) ;
 int sis_pqi_reset_quiesce (struct pqi_ctrl_info*) ;
 int writel (scalar_t__,int *) ;

__attribute__((used)) static int pqi_reset(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 union pqi_reset_register reset_reg;

 if (ctrl_info->pqi_reset_quiesce_supported) {
  rc = sis_pqi_reset_quiesce(ctrl_info);
  if (rc) {
   dev_err(&ctrl_info->pci_dev->dev,
    "PQI reset failed during quiesce with error %d\n",
    rc);
   return rc;
  }
 }

 reset_reg.all_bits = 0;
 reset_reg.bits.reset_type = PQI_RESET_TYPE_HARD_RESET;
 reset_reg.bits.reset_action = PQI_RESET_ACTION_RESET;

 writel(reset_reg.all_bits, &ctrl_info->pqi_registers->device_reset);

 rc = pqi_wait_for_pqi_reset_completion(ctrl_info);
 if (rc)
  dev_err(&ctrl_info->pci_dev->dev,
   "PQI reset failed with error %d\n", rc);

 return rc;
}
