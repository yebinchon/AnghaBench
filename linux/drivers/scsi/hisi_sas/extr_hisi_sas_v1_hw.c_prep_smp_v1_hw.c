
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_2__ {struct scatterlist smp_req; } ;
struct sas_task {TYPE_1__ smp_task; struct domain_device* dev; } ;
struct hisi_sas_slot {unsigned int idx; struct hisi_sas_port* port; struct hisi_sas_cmd_hdr* cmd_hdr; struct sas_task* task; } ;
struct hisi_sas_port {int id; } ;
struct hisi_sas_device {unsigned int device_id; } ;
struct hisi_sas_cmd_hdr {void* sts_buffer_addr; void* cmd_table_addr; void* transfer_tags; void* dw2; void* dw1; void* dw0; } ;
struct hisi_hba {int dummy; } ;
struct domain_device {struct hisi_sas_device* lldd_dev; } ;
typedef int dma_addr_t ;


 unsigned int CMD_HDR_CFL_OFF ;
 int CMD_HDR_CMD_OFF ;
 unsigned int CMD_HDR_DEVICE_ID_OFF ;
 unsigned int CMD_HDR_IPTT_OFF ;
 int CMD_HDR_MODE_OFF ;
 int CMD_HDR_MRFL_OFF ;
 int CMD_HDR_PORT_OFF ;
 int CMD_HDR_PRIORITY_OFF ;
 int HISI_SAS_MAX_SMP_RESP_SZ ;
 void* cpu_to_le32 (unsigned int) ;
 void* cpu_to_le64 (int ) ;
 int hisi_sas_status_buf_addr_dma (struct hisi_sas_slot*) ;
 int sg_dma_address (struct scatterlist*) ;
 unsigned int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static void prep_smp_v1_hw(struct hisi_hba *hisi_hba,
     struct hisi_sas_slot *slot)
{
 struct sas_task *task = slot->task;
 struct hisi_sas_cmd_hdr *hdr = slot->cmd_hdr;
 struct domain_device *device = task->dev;
 struct hisi_sas_port *port = slot->port;
 struct scatterlist *sg_req;
 struct hisi_sas_device *sas_dev = device->lldd_dev;
 dma_addr_t req_dma_addr;
 unsigned int req_len;


 sg_req = &task->smp_task.smp_req;
 req_len = sg_dma_len(sg_req);
 req_dma_addr = sg_dma_address(sg_req);



 hdr->dw0 = cpu_to_le32((port->id << CMD_HDR_PORT_OFF) |
          (1 << CMD_HDR_PRIORITY_OFF) |
          (1 << CMD_HDR_MODE_OFF) |
          (2 << CMD_HDR_CMD_OFF));


 hdr->dw1 = cpu_to_le32(sas_dev->device_id << CMD_HDR_DEVICE_ID_OFF);


 hdr->dw2 = cpu_to_le32((((req_len-4)/4) << CMD_HDR_CFL_OFF) |
          (HISI_SAS_MAX_SMP_RESP_SZ/4 <<
          CMD_HDR_MRFL_OFF));

 hdr->transfer_tags = cpu_to_le32(slot->idx << CMD_HDR_IPTT_OFF);

 hdr->cmd_table_addr = cpu_to_le64(req_dma_addr);
 hdr->sts_buffer_addr = cpu_to_le64(hisi_sas_status_buf_addr_dma(slot));
}
