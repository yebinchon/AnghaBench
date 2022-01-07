
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;int sense_buffer; TYPE_1__* device; } ;
struct ipr_resource_entry {int needs_sync_complete; scalar_t__ in_erp; } ;
struct TYPE_7__ {int ioasc; } ;
struct TYPE_8__ {TYPE_2__ hdr; } ;
struct TYPE_9__ {TYPE_3__ ioasa; } ;
struct ipr_cmnd {TYPE_5__* hrrq; int queue; scalar_t__ eh_comp; struct scsi_cmnd* scsi_cmd; int sense_buffer; TYPE_4__ s; } ;
struct TYPE_10__ {int hrrq_free_q; } ;
struct TYPE_6__ {struct ipr_resource_entry* hostdata; } ;


 int DID_ERROR ;
 scalar_t__ IPR_IOASC_SENSE_KEY (int ) ;
 int KERN_ERR ;
 int SCSI_SENSE_BUFFERSIZE ;
 int be32_to_cpu (int ) ;
 int complete (scalar_t__) ;
 int ipr_is_naca_model (struct ipr_resource_entry*) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void __ipr_erp_done(struct ipr_cmnd *ipr_cmd)
{
 struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;
 struct ipr_resource_entry *res = scsi_cmd->device->hostdata;
 u32 ioasc = be32_to_cpu(ipr_cmd->s.ioasa.hdr.ioasc);

 if (IPR_IOASC_SENSE_KEY(ioasc) > 0) {
  scsi_cmd->result |= (DID_ERROR << 16);
  scmd_printk(KERN_ERR, scsi_cmd,
       "Request Sense failed with IOASC: 0x%08X\n", ioasc);
 } else {
  memcpy(scsi_cmd->sense_buffer, ipr_cmd->sense_buffer,
         SCSI_SENSE_BUFFERSIZE);
 }

 if (res) {
  if (!ipr_is_naca_model(res))
   res->needs_sync_complete = 1;
  res->in_erp = 0;
 }
 scsi_dma_unmap(ipr_cmd->scsi_cmd);
 scsi_cmd->scsi_done(scsi_cmd);
 if (ipr_cmd->eh_comp)
  complete(ipr_cmd->eh_comp);
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
}
