
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {void* long_resp_size; void* long_resp_addr; void* long_req_size; void* long_req_addr; } ;
struct smp_req {void* tag; TYPE_1__ long_smp_req; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {struct scatterlist smp_req; struct scatterlist smp_resp; } ;
struct sas_task {TYPE_2__ smp_task; struct domain_device* dev; } ;
struct pm8001_hba_info {int dev; struct inbound_queue_table* inbnd_q_tbl; } ;
struct pm8001_device {int device_id; } ;
struct pm8001_ccb_info {int ccb_tag; struct sas_task* task; } ;
struct inbound_queue_table {int dummy; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;
typedef int smp_cmd ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ENOMEM ;
 int OPC_INB_SMP_REQUEST ;
 int build_smp_cmd (int ,void*,struct smp_req*) ;
 void* cpu_to_le32 (int) ;
 void* cpu_to_le64 (int ) ;
 int dma_map_sg (int ,struct scatterlist*,int,int ) ;
 int dma_unmap_sg (int ,struct scatterlist*,int,int ) ;
 int memset (struct smp_req*,int ,int) ;
 int pm8001_mpi_build_cmd (struct pm8001_hba_info*,struct inbound_queue_table*,int,int*,int ) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static int pm8001_chip_smp_req(struct pm8001_hba_info *pm8001_ha,
 struct pm8001_ccb_info *ccb)
{
 int elem, rc;
 struct sas_task *task = ccb->task;
 struct domain_device *dev = task->dev;
 struct pm8001_device *pm8001_dev = dev->lldd_dev;
 struct scatterlist *sg_req, *sg_resp;
 u32 req_len, resp_len;
 struct smp_req smp_cmd;
 u32 opc;
 struct inbound_queue_table *circularQ;

 memset(&smp_cmd, 0, sizeof(smp_cmd));



 sg_req = &task->smp_task.smp_req;
 elem = dma_map_sg(pm8001_ha->dev, sg_req, 1, DMA_TO_DEVICE);
 if (!elem)
  return -ENOMEM;
 req_len = sg_dma_len(sg_req);

 sg_resp = &task->smp_task.smp_resp;
 elem = dma_map_sg(pm8001_ha->dev, sg_resp, 1, DMA_FROM_DEVICE);
 if (!elem) {
  rc = -ENOMEM;
  goto err_out;
 }
 resp_len = sg_dma_len(sg_resp);

 if ((req_len & 0x3) || (resp_len & 0x3)) {
  rc = -EINVAL;
  goto err_out_2;
 }

 opc = OPC_INB_SMP_REQUEST;
 circularQ = &pm8001_ha->inbnd_q_tbl[0];
 smp_cmd.tag = cpu_to_le32(ccb->ccb_tag);
 smp_cmd.long_smp_req.long_req_addr =
  cpu_to_le64((u64)sg_dma_address(&task->smp_task.smp_req));
 smp_cmd.long_smp_req.long_req_size =
  cpu_to_le32((u32)sg_dma_len(&task->smp_task.smp_req)-4);
 smp_cmd.long_smp_req.long_resp_addr =
  cpu_to_le64((u64)sg_dma_address(&task->smp_task.smp_resp));
 smp_cmd.long_smp_req.long_resp_size =
  cpu_to_le32((u32)sg_dma_len(&task->smp_task.smp_resp)-4);
 build_smp_cmd(pm8001_dev->device_id, smp_cmd.tag, &smp_cmd);
 rc = pm8001_mpi_build_cmd(pm8001_ha, circularQ, opc,
     (u32 *)&smp_cmd, 0);
 if (rc)
  goto err_out_2;

 return 0;

err_out_2:
 dma_unmap_sg(pm8001_ha->dev, &ccb->task->smp_task.smp_resp, 1,
   DMA_FROM_DEVICE);
err_out:
 dma_unmap_sg(pm8001_ha->dev, &ccb->task->smp_task.smp_req, 1,
   DMA_TO_DEVICE);
 return rc;
}
