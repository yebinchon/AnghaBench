
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int t_data_nents; int t_data_sg; int se_cmd_flags; int data_length; scalar_t__ tag; struct se_device* se_dev; int * se_lun; } ;
struct xcopy_pt_cmd {struct se_cmd se_cmd; } ;
struct xcopy_op {int xop_data_nents; int xop_data_sg; TYPE_1__* xop_se_cmd; } ;
struct se_device {int xcopy_lun; } ;
typedef scalar_t__ sense_reason_t ;
struct TYPE_2__ {struct se_device* se_dev; int * se_lun; } ;


 int EINVAL ;
 int SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC ;
 int SCF_SE_LUN_CMD ;
 int pr_debug (char*,int ,int ) ;
 int target_alloc_sgl (int *,int *,int ,int,int) ;
 scalar_t__ target_setup_cmd_from_cdb (struct se_cmd*,unsigned char*) ;
 scalar_t__ transport_generic_map_mem_to_cmd (struct se_cmd*,int ,int ,int *,int ) ;

__attribute__((used)) static int target_xcopy_setup_pt_cmd(
 struct xcopy_pt_cmd *xpt_cmd,
 struct xcopy_op *xop,
 struct se_device *se_dev,
 unsigned char *cdb,
 bool remote_port,
 bool alloc_mem)
{
 struct se_cmd *cmd = &xpt_cmd->se_cmd;
 sense_reason_t sense_rc;
 int ret = 0, rc;





 if (remote_port) {
  cmd->se_lun = &se_dev->xcopy_lun;
  cmd->se_dev = se_dev;
 } else {
  cmd->se_lun = xop->xop_se_cmd->se_lun;
  cmd->se_dev = xop->xop_se_cmd->se_dev;
 }
 cmd->se_cmd_flags |= SCF_SE_LUN_CMD;

 cmd->tag = 0;
 sense_rc = target_setup_cmd_from_cdb(cmd, cdb);
 if (sense_rc) {
  ret = -EINVAL;
  goto out;
 }

 if (alloc_mem) {
  rc = target_alloc_sgl(&cmd->t_data_sg, &cmd->t_data_nents,
          cmd->data_length, 0, 0);
  if (rc < 0) {
   ret = rc;
   goto out;
  }





  cmd->se_cmd_flags |= SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC;
 } else {




  sense_rc = transport_generic_map_mem_to_cmd(cmd,
     xop->xop_data_sg, xop->xop_data_nents,
     ((void*)0), 0);
  if (sense_rc) {
   ret = -EINVAL;
   goto out;
  }

  pr_debug("Setup PASSTHROUGH_NOALLOC t_data_sg: %p t_data_nents:"
    " %u\n", cmd->t_data_sg, cmd->t_data_nents);
 }

 return 0;

out:
 return ret;
}
