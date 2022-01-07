
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snic_req_info {int dr_req; int abort_req; int req; } ;
struct TYPE_5__ {scalar_t__ sense_addr; } ;
struct TYPE_6__ {TYPE_2__ icmnd; } ;
struct snic_host_req {TYPE_3__ u; } ;
struct snic {TYPE_1__* pdev; int shost; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int CMD_FLAGS (struct scsi_cmnd*) ;
 scalar_t__ CMD_STATE (struct scsi_cmnd*) ;
 int DMA_FROM_DEVICE ;
 int SCSI_SENSE_BUFFERSIZE ;
 int SNIC_BUG_ON (int) ;
 int SNIC_DEV_RST_NOTSUP ;
 int SNIC_DEV_RST_TERM_ISSUED ;
 scalar_t__ SNIC_IOREQ_ABTS_COMPLETE ;
 scalar_t__ SNIC_IOREQ_COMPLETE ;
 scalar_t__ SNIC_IOREQ_LR_COMPLETE ;
 int SNIC_IO_INTERNAL_TERM_ISSUED ;
 int SNIC_SCSI_CLEANUP ;
 int SNIC_SCSI_DBG (int ,char*,struct scsi_cmnd*,int ,struct snic_req_info*,int ,int ,int ,int ,int) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int le64_to_cpu (scalar_t__) ;
 struct snic_host_req* rqi_to_req (struct snic_req_info*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int snic_cmd_tag (struct scsi_cmnd*) ;
 int snic_ioreq_state_to_str (scalar_t__) ;
 int snic_req_free (struct snic*,struct snic_req_info*) ;

__attribute__((used)) static void
snic_release_req_buf(struct snic *snic,
     struct snic_req_info *rqi,
     struct scsi_cmnd *sc)
{
 struct snic_host_req *req = rqi_to_req(rqi);


 SNIC_BUG_ON(!((CMD_STATE(sc) == SNIC_IOREQ_COMPLETE) ||
        (CMD_STATE(sc) == SNIC_IOREQ_ABTS_COMPLETE) ||
        (CMD_FLAGS(sc) & SNIC_DEV_RST_NOTSUP) ||
        (CMD_FLAGS(sc) & SNIC_IO_INTERNAL_TERM_ISSUED) ||
        (CMD_FLAGS(sc) & SNIC_DEV_RST_TERM_ISSUED) ||
        (CMD_FLAGS(sc) & SNIC_SCSI_CLEANUP) ||
        (CMD_STATE(sc) == SNIC_IOREQ_LR_COMPLETE)));

 SNIC_SCSI_DBG(snic->shost,
        "Rel_req:sc %p:tag %x:rqi %p:ioreq %p:abt %p:dr %p: state %s:flags 0x%llx\n",
        sc, snic_cmd_tag(sc), rqi, rqi->req, rqi->abort_req,
        rqi->dr_req, snic_ioreq_state_to_str(CMD_STATE(sc)),
        CMD_FLAGS(sc));

 if (req->u.icmnd.sense_addr)
  dma_unmap_single(&snic->pdev->dev,
     le64_to_cpu(req->u.icmnd.sense_addr),
     SCSI_SENSE_BUFFERSIZE,
     DMA_FROM_DEVICE);

 scsi_dma_unmap(sc);

 snic_req_free(snic, rqi);
}
