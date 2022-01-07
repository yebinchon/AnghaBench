
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t u32 ;
struct scsi_cmnd {int cmd_len; int * cmnd; TYPE_2__* device; int * host_scribble; void* result; int sense_buffer; TYPE_1__* request; } ;
struct asc_board {int dev; scalar_t__ adv_reqp_addr; TYPE_3__* adv_reqp; } ;
typedef int dma_addr_t ;
struct TYPE_14__ {size_t srb_tag; int cdb_len; void* data_cnt; scalar_t__ sg_real_addr; int * sg_list_ptr; scalar_t__ data_addr; int sense_len; void* sense_addr; int target_lun; int target_id; int cdb16; int cdb; scalar_t__ done_status; scalar_t__ scsi_cntl; scalar_t__ cntl; } ;
struct TYPE_13__ {struct scsi_cmnd* cmndp; int * sgblkp; TYPE_4__ scsi_req_q; scalar_t__ req_addr; } ;
typedef TYPE_3__ adv_req_t ;
struct TYPE_15__ {int sg_tablesize; } ;
struct TYPE_12__ {TYPE_8__* host; int lun; int id; } ;
struct TYPE_11__ {size_t tag; } ;
typedef TYPE_4__ ADV_SCSI_REQ_Q ;


 int ADV_MAX_SG_LIST ;
 int ADV_SUCCESS ;
 int ASC_BUSY ;
 int ASC_DBG (int,char*) ;
 int ASC_DBG_PRT_ADV_SCSI_REQ_Q (int,TYPE_4__*) ;
 int ASC_DBG_PRT_CDB (int,int *,int) ;
 int ASC_ERROR ;
 int ASC_NOERROR ;
 int ASC_STATS (TYPE_8__*,int ) ;
 int ASC_STATS_ADD (TYPE_8__*,int ,int) ;
 int DID_ERROR ;
 int DMA_FROM_DEVICE ;
 void* HOST_BYTE (int ) ;
 int KERN_ERR ;
 int SCSI_SENSE_BUFFERSIZE ;
 int adv_build_noreq ;
 int adv_get_sglist (struct asc_board*,TYPE_3__*,TYPE_4__*,struct scsi_cmnd*,int) ;
 void* cpu_to_le32 (int ) ;
 int dma_map_single (int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int memcpy (int ,int *,int) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int,int ) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_dma_map (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int xfer_cnt ;
 int xfer_elem ;

__attribute__((used)) static int
adv_build_req(struct asc_board *boardp, struct scsi_cmnd *scp,
       adv_req_t **adv_reqpp)
{
 u32 srb_tag = scp->request->tag;
 adv_req_t *reqp;
 ADV_SCSI_REQ_Q *scsiqp;
 int ret;
 int use_sg;
 dma_addr_t sense_addr;





 reqp = &boardp->adv_reqp[srb_tag];
 if (reqp->cmndp && reqp->cmndp != scp ) {
  ASC_DBG(1, "no free adv_req_t\n");
  ASC_STATS(scp->device->host, adv_build_noreq);
  return ASC_BUSY;
 }

 reqp->req_addr = boardp->adv_reqp_addr + (srb_tag * sizeof(adv_req_t));

 scsiqp = &reqp->scsi_req_q;




 scsiqp->cntl = scsiqp->scsi_cntl = scsiqp->done_status = 0;




 scsiqp->srb_tag = srb_tag;




 reqp->cmndp = scp;
 scp->host_scribble = (void *)reqp;






 scsiqp->cdb_len = scp->cmd_len;

 memcpy(scsiqp->cdb, scp->cmnd, scp->cmd_len < 12 ? scp->cmd_len : 12);

 if (scp->cmd_len > 12) {
  int cdb16_len = scp->cmd_len - 12;

  memcpy(scsiqp->cdb16, &scp->cmnd[12], cdb16_len);
 }

 scsiqp->target_id = scp->device->id;
 scsiqp->target_lun = scp->device->lun;

 sense_addr = dma_map_single(boardp->dev, scp->sense_buffer,
        SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);
 if (dma_mapping_error(boardp->dev, sense_addr)) {
  ASC_DBG(1, "failed to map sense buffer\n");
  ASC_STATS(scp->device->host, adv_build_noreq);
  return ASC_BUSY;
 }
 scsiqp->sense_addr = cpu_to_le32(sense_addr);
 scsiqp->sense_len = SCSI_SENSE_BUFFERSIZE;



 use_sg = scsi_dma_map(scp);
 if (use_sg < 0) {
  ASC_DBG(1, "failed to map SG list\n");
  ASC_STATS(scp->device->host, adv_build_noreq);
  return ASC_BUSY;
 } else if (use_sg == 0) {

  reqp->sgblkp = ((void*)0);
  scsiqp->data_cnt = 0;

  scsiqp->data_addr = 0;
  scsiqp->sg_list_ptr = ((void*)0);
  scsiqp->sg_real_addr = 0;
 } else {
  if (use_sg > ADV_MAX_SG_LIST) {
   scmd_printk(KERN_ERR, scp, "use_sg %d > "
       "ADV_MAX_SG_LIST %d\n", use_sg,
       scp->device->host->sg_tablesize);
   scsi_dma_unmap(scp);
   scp->result = HOST_BYTE(DID_ERROR);
   reqp->cmndp = ((void*)0);
   scp->host_scribble = ((void*)0);

   return ASC_ERROR;
  }

  scsiqp->data_cnt = cpu_to_le32(scsi_bufflen(scp));

  ret = adv_get_sglist(boardp, reqp, scsiqp, scp, use_sg);
  if (ret != ADV_SUCCESS) {
   scsi_dma_unmap(scp);
   scp->result = HOST_BYTE(DID_ERROR);
   reqp->cmndp = ((void*)0);
   scp->host_scribble = ((void*)0);

   return ret;
  }

  ASC_STATS_ADD(scp->device->host, xfer_elem, use_sg);
 }

 ASC_STATS(scp->device->host, xfer_cnt);

 ASC_DBG_PRT_ADV_SCSI_REQ_Q(2, scsiqp);
 ASC_DBG_PRT_CDB(1, scp->cmnd, scp->cmd_len);

 *adv_reqpp = reqp;

 return ASC_NOERROR;
}
