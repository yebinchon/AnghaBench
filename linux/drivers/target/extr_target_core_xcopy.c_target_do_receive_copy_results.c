
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {unsigned char* t_task_cdb; int data_length; } ;
typedef int sense_reason_t ;






 int TCM_INVALID_CDB_FIELD ;
 int TCM_NO_SENSE ;
 int pr_debug (char*,int,int,int ) ;
 int pr_err (char*,...) ;
 int target_rcr_operating_parameters (struct se_cmd*) ;

sense_reason_t target_do_receive_copy_results(struct se_cmd *se_cmd)
{
 unsigned char *cdb = &se_cmd->t_task_cdb[0];
 int sa = (cdb[1] & 0x1f), list_id = cdb[2];
 sense_reason_t rc = TCM_NO_SENSE;

 pr_debug("Entering target_do_receive_copy_results: SA: 0x%02x, List ID:"
  " 0x%02x, AL: %u\n", sa, list_id, se_cmd->data_length);

 if (list_id != 0) {
  pr_err("Receive Copy Results with non zero list identifier"
         " not supported\n");
  return TCM_INVALID_CDB_FIELD;
 }

 switch (sa) {
 case 129:
  rc = target_rcr_operating_parameters(se_cmd);
  break;
 case 131:
 case 128:
 case 130:
 default:
  pr_err("Unsupported SA for receive copy results: 0x%02x\n", sa);
  return TCM_INVALID_CDB_FIELD;
 }

 return rc;
}
