
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct se_cmd {int t_task_lba; int prot_type; } ;
struct qla_tgt_cmd {TYPE_1__* tgt; struct se_cmd se_cmd; } ;
struct TYPE_7__ {TYPE_2__* tgt_ops; } ;
struct qla_hw_data {TYPE_3__ tgt; } ;
struct crc_context {int* app_tag_mask; int* ref_tag_mask; void* ref_tag; scalar_t__ app_tag; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_6__ {int (* get_dif_tags ) (struct qla_tgt_cmd*,int *) ;int (* chk_dif_tags ) (int) ;} ;
struct TYPE_5__ {TYPE_4__* vha; } ;


 scalar_t__ IS_PI_UNINIT_CAPABLE (struct qla_hw_data*) ;
 int PO_DIS_REF_TAG_VALD ;
 int PO_DIS_VALD_APP_ESC ;
 int PO_DIS_VALD_APP_REF_ESC ;




 void* cpu_to_le32 (int) ;
 int qla_tgt_ref_mask_check (struct se_cmd*) ;
 int stub1 (struct qla_tgt_cmd*,int *) ;
 int stub2 (int) ;
 int stub3 (int) ;

__attribute__((used)) static void
qla_tgt_set_dif_tags(struct qla_tgt_cmd *cmd, struct crc_context *ctx,
    uint16_t *pfw_prot_opts)
{
 struct se_cmd *se_cmd = &cmd->se_cmd;
 uint32_t lba = 0xffffffff & se_cmd->t_task_lba;
 scsi_qla_host_t *vha = cmd->tgt->vha;
 struct qla_hw_data *ha = vha->hw;
 uint32_t t32 = 0;






 ctx->app_tag = 0;
 ctx->app_tag_mask[0] = 0x0;
 ctx->app_tag_mask[1] = 0x0;

 if (IS_PI_UNINIT_CAPABLE(ha)) {
  if ((se_cmd->prot_type == 130) ||
      (se_cmd->prot_type == 129))
   *pfw_prot_opts |= PO_DIS_VALD_APP_ESC;
  else if (se_cmd->prot_type == 128)
   *pfw_prot_opts |= PO_DIS_VALD_APP_REF_ESC;
 }

 t32 = ha->tgt.tgt_ops->get_dif_tags(cmd, pfw_prot_opts);

 switch (se_cmd->prot_type) {
 case 131:





  ctx->ref_tag = cpu_to_le32(lba);

  ctx->ref_tag_mask[0] = 0xff;
  ctx->ref_tag_mask[1] = 0xff;
  ctx->ref_tag_mask[2] = 0xff;
  ctx->ref_tag_mask[3] = 0xff;
  break;
 case 130:




     ctx->ref_tag = cpu_to_le32(lba);
     if (!qla_tgt_ref_mask_check(se_cmd) ||
  !(ha->tgt.tgt_ops->chk_dif_tags(t32))) {
      *pfw_prot_opts |= PO_DIS_REF_TAG_VALD;
      break;
     }

     ctx->ref_tag_mask[0] = 0xff;
     ctx->ref_tag_mask[1] = 0xff;
     ctx->ref_tag_mask[2] = 0xff;
     ctx->ref_tag_mask[3] = 0xff;
     break;
 case 129:




     ctx->ref_tag = cpu_to_le32(lba);
     if (!qla_tgt_ref_mask_check(se_cmd) ||
  !(ha->tgt.tgt_ops->chk_dif_tags(t32))) {
      *pfw_prot_opts |= PO_DIS_REF_TAG_VALD;
      break;
     }

     ctx->ref_tag_mask[0] = 0xff;
     ctx->ref_tag_mask[1] = 0xff;
     ctx->ref_tag_mask[2] = 0xff;
     ctx->ref_tag_mask[3] = 0xff;
     break;
 case 128:

     *pfw_prot_opts |= PO_DIS_REF_TAG_VALD;
     ctx->ref_tag_mask[0] = ctx->ref_tag_mask[1] =
  ctx->ref_tag_mask[2] = ctx->ref_tag_mask[3] = 0x00;
     break;
 }
}
