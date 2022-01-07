
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ipr_ioa_cfg {TYPE_5__* pdev; } ;
struct ipr_hostrcb {int queue; } ;
struct TYPE_7__ {int ioasc; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
struct TYPE_9__ {TYPE_2__ ioasa; } ;
struct TYPE_12__ {struct ipr_hostrcb* hostrcb; } ;
struct ipr_cmnd {TYPE_4__* hrrq; int queue; TYPE_3__ s; TYPE_6__ u; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {int hrrq_free_q; } ;


 int IPR_HCAM_CDB_OP_CODE_CONFIG_CHANGE ;
 scalar_t__ IPR_IOASC_ABORTED_CMD_TERM_BY_HOST ;
 scalar_t__ IPR_IOASC_IOA_WAS_RESET ;
 scalar_t__ be32_to_cpu (int ) ;
 int dev_err (int *,char*,scalar_t__) ;
 int ipr_handle_config_change (struct ipr_ioa_cfg*,struct ipr_hostrcb*) ;
 int ipr_send_hcam (struct ipr_ioa_cfg*,int ,struct ipr_hostrcb*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;

__attribute__((used)) static void ipr_process_ccn(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 struct ipr_hostrcb *hostrcb = ipr_cmd->u.hostrcb;
 u32 ioasc = be32_to_cpu(ipr_cmd->s.ioasa.hdr.ioasc);

 list_del_init(&hostrcb->queue);
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);

 if (ioasc) {
  if (ioasc != IPR_IOASC_IOA_WAS_RESET &&
      ioasc != IPR_IOASC_ABORTED_CMD_TERM_BY_HOST)
   dev_err(&ioa_cfg->pdev->dev,
    "Host RCB failed with IOASC: 0x%08X\n", ioasc);

  ipr_send_hcam(ioa_cfg, IPR_HCAM_CDB_OP_CODE_CONFIG_CHANGE, hostrcb);
 } else {
  ipr_handle_config_change(ioa_cfg, hostrcb);
 }
}
