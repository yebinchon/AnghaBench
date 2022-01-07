
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int dummy; } ;
struct kek_mgmt_resp {int err_qlfr; int kidx_new_curr_ksop; int status; } ;


 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int le32_to_cpu (int ) ;
 int pm8001_printk (char*,int ,int ,int ) ;

__attribute__((used)) static int mpi_kek_management_resp(struct pm8001_hba_info *pm8001_ha,
   void *piomb)
{
 struct kek_mgmt_resp *pPayload = (struct kek_mgmt_resp *)(piomb + 4);

 u32 status = le32_to_cpu(pPayload->status);
 u32 kidx_new_curr_ksop = le32_to_cpu(pPayload->kidx_new_curr_ksop);
 u32 err_qlfr = le32_to_cpu(pPayload->err_qlfr);

 PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
  "KEK MGMT RESP. Status 0x%x idx_ksop 0x%x err_qlfr 0x%x\n",
  status, kidx_new_curr_ksop, err_qlfr));

 return 0;
}
