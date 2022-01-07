
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct set_ctrl_cfg_resp {int err_qlfr_pgcd; int status; } ;
struct pm8001_hba_info {int dummy; } ;


 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int le32_to_cpu (int ) ;
 int pm8001_printk (char*,int ,int ) ;

__attribute__((used)) static int mpi_set_controller_config_resp(struct pm8001_hba_info *pm8001_ha,
   void *piomb)
{
 struct set_ctrl_cfg_resp *pPayload =
   (struct set_ctrl_cfg_resp *)(piomb + 4);
 u32 status = le32_to_cpu(pPayload->status);
 u32 err_qlfr_pgcd = le32_to_cpu(pPayload->err_qlfr_pgcd);

 PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "SET CONTROLLER RESP: status 0x%x qlfr_pgcd 0x%x\n",
   status, err_qlfr_pgcd));

 return 0;
}
