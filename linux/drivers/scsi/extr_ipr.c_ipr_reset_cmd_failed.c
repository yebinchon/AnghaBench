
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct ipr_ioa_cfg {TYPE_7__* pdev; } ;
struct TYPE_8__ {int * cdb; } ;
struct TYPE_9__ {TYPE_1__ cmd_pkt; } ;
struct TYPE_11__ {int ioasc; } ;
struct TYPE_12__ {TYPE_4__ hdr; } ;
struct TYPE_13__ {TYPE_5__ ioasa; } ;
struct ipr_cmnd {TYPE_3__* hrrq; int queue; TYPE_2__ ioarcb; TYPE_6__ s; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_14__ {int dev; } ;
struct TYPE_10__ {int hrrq_free_q; } ;


 int IPR_RC_JOB_RETURN ;
 int IPR_SHUTDOWN_NONE ;
 int be32_to_cpu (int ) ;
 int dev_err (int *,char*,int ,int ) ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int ipr_reset_cmd_failed(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 u32 ioasc = be32_to_cpu(ipr_cmd->s.ioasa.hdr.ioasc);

 dev_err(&ioa_cfg->pdev->dev,
  "0x%02X failed with IOASC: 0x%08X\n",
  ipr_cmd->ioarcb.cmd_pkt.cdb[0], ioasc);

 ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_NONE);
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
 return IPR_RC_JOB_RETURN;
}
