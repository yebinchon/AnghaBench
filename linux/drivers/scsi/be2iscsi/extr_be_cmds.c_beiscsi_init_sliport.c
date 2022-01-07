
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int ctrl; int state; } ;


 int BEISCSI_HBA_IN_ERR ;
 int BEISCSI_HBA_UER_SUPP ;
 int BEISCSI_LOG_INIT ;
 int EIO ;
 int KERN_ERR ;
 int beiscsi_check_fw_rdy (struct beiscsi_hba*) ;
 int beiscsi_cmd_function_reset (struct beiscsi_hba*) ;
 int beiscsi_cmd_special_wrb (int *,int) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;

int beiscsi_init_sliport(struct beiscsi_hba *phba)
{
 int status;


 status = beiscsi_check_fw_rdy(phba);
 if (!status)
  return -EIO;


 phba->state &= ~BEISCSI_HBA_IN_ERR;


 phba->state &= ~BEISCSI_HBA_UER_SUPP;





 status = beiscsi_cmd_function_reset(phba);
 if (status) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BC_%d : SLI Function Reset failed\n");
  return status;
 }


 return beiscsi_cmd_special_wrb(&phba->ctrl, 1);
}
