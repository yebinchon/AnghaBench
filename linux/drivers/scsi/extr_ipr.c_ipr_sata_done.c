
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_18__ {int status; } ;
struct ipr_sata_port {TYPE_9__ ioasa; struct ipr_resource_entry* res; } ;
struct ipr_resource_entry {int target; int bus; } ;
struct ipr_ioasa_gata {int dummy; } ;
struct ipr_ioa_cfg {int host; scalar_t__ sis64; } ;
struct TYPE_14__ {int ioasc_specific; int ioasc; } ;
struct TYPE_13__ {int gata; } ;
struct TYPE_15__ {TYPE_5__ hdr; TYPE_4__ u; } ;
struct TYPE_11__ {int gata; } ;
struct TYPE_12__ {TYPE_2__ u; } ;
struct TYPE_16__ {TYPE_6__ ioasa; TYPE_3__ ioasa64; } ;
struct ipr_cmnd {TYPE_8__* hrrq; int queue; TYPE_7__ s; struct ipr_ioa_cfg* ioa_cfg; struct ata_queued_cmd* qc; } ;
struct ata_queued_cmd {int err_mask; TYPE_1__* ap; } ;
struct TYPE_17__ {int _lock; int hrrq_free_q; } ;
struct TYPE_10__ {struct ipr_sata_port* private_data; } ;


 int IPR_ATA_DEVICE_WAS_RESET ;
 scalar_t__ IPR_IOASC_SENSE_KEY (int) ;
 scalar_t__ RECOVERED_ERROR ;
 int __ac_err_mask (int ) ;
 int ac_err_mask (int ) ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 int be32_to_cpu (int ) ;
 int ipr_dump_ioasa (struct ipr_ioa_cfg*,struct ipr_cmnd*,struct ipr_resource_entry*) ;
 int list_add_tail (int *,int *) ;
 int memcpy (TYPE_9__*,int *,int) ;
 int scsi_report_device_reset (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ipr_sata_done(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 struct ata_queued_cmd *qc = ipr_cmd->qc;
 struct ipr_sata_port *sata_port = qc->ap->private_data;
 struct ipr_resource_entry *res = sata_port->res;
 u32 ioasc = be32_to_cpu(ipr_cmd->s.ioasa.hdr.ioasc);

 spin_lock(&ipr_cmd->hrrq->_lock);
 if (ipr_cmd->ioa_cfg->sis64)
  memcpy(&sata_port->ioasa, &ipr_cmd->s.ioasa64.u.gata,
         sizeof(struct ipr_ioasa_gata));
 else
  memcpy(&sata_port->ioasa, &ipr_cmd->s.ioasa.u.gata,
         sizeof(struct ipr_ioasa_gata));
 ipr_dump_ioasa(ioa_cfg, ipr_cmd, res);

 if (be32_to_cpu(ipr_cmd->s.ioasa.hdr.ioasc_specific) & IPR_ATA_DEVICE_WAS_RESET)
  scsi_report_device_reset(ioa_cfg->host, res->bus, res->target);

 if (IPR_IOASC_SENSE_KEY(ioasc) > RECOVERED_ERROR)
  qc->err_mask |= __ac_err_mask(sata_port->ioasa.status);
 else
  qc->err_mask |= ac_err_mask(sata_port->ioasa.status);
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
 spin_unlock(&ipr_cmd->hrrq->_lock);
 ata_qc_complete(qc);
}
