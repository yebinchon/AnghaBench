
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xcopy_op {int xop_work; struct se_cmd* xop_se_cmd; } ;
struct TYPE_2__ {int emulate_3pc; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct se_cmd {int* t_task_cdb; scalar_t__ data_length; struct se_device* se_dev; } ;
typedef int sense_reason_t ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int SAM_STAT_GOOD ;
 int TCM_NO_SENSE ;
 int TCM_OUT_OF_RESOURCES ;
 int TCM_PARAMETER_LIST_LENGTH_ERROR ;
 int TCM_UNSUPPORTED_SCSI_OPCODE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ XCOPY_HDR_LEN ;
 int kfree (struct xcopy_op*) ;
 struct xcopy_op* kzalloc (int,int ) ;
 int pr_err (char*,...) ;
 int queue_work (int ,int *) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 int target_xcopy_do_work ;
 int xcopy_wq ;

sense_reason_t target_do_xcopy(struct se_cmd *se_cmd)
{
 struct se_device *dev = se_cmd->se_dev;
 struct xcopy_op *xop;
 unsigned int sa;

 if (!dev->dev_attrib.emulate_3pc) {
  pr_err("EXTENDED_COPY operation explicitly disabled\n");
  return TCM_UNSUPPORTED_SCSI_OPCODE;
 }

 sa = se_cmd->t_task_cdb[1] & 0x1f;
 if (sa != 0x00) {
  pr_err("EXTENDED_COPY(LID4) not supported\n");
  return TCM_UNSUPPORTED_SCSI_OPCODE;
 }

 if (se_cmd->data_length == 0) {
  target_complete_cmd(se_cmd, SAM_STAT_GOOD);
  return TCM_NO_SENSE;
 }
 if (se_cmd->data_length < XCOPY_HDR_LEN) {
  pr_err("XCOPY parameter truncation: length %u < hdr_len %u\n",
    se_cmd->data_length, XCOPY_HDR_LEN);
  return TCM_PARAMETER_LIST_LENGTH_ERROR;
 }

 xop = kzalloc(sizeof(struct xcopy_op), GFP_KERNEL);
 if (!xop)
  goto err;
 xop->xop_se_cmd = se_cmd;
 INIT_WORK(&xop->xop_work, target_xcopy_do_work);
 if (WARN_ON_ONCE(!queue_work(xcopy_wq, &xop->xop_work)))
  goto free;
 return TCM_NO_SENSE;

free:
 kfree(xop);

err:
 return TCM_OUT_OF_RESOURCES;
}
