
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; } ;
struct inbound_queue_table {int dummy; } ;
struct TYPE_3__ {int len; } ;
struct TYPE_4__ {int addr; TYPE_1__ im_len; } ;
struct fw_flash_updata_info {TYPE_2__ sgl; int total_image_len; int cur_image_offset; int cur_image_len; } ;
struct fw_flash_Update_req {void* sgl_addr_hi; void* sgl_addr_lo; int len; void* total_image_len; void* cur_image_offset; void* cur_image_len; void* tag; } ;


 int OPC_INB_FW_FLASH_UPDATE ;
 void* cpu_to_le32 (int ) ;
 int le64_to_cpu (int ) ;
 int lower_32_bits (int ) ;
 int memset (struct fw_flash_Update_req*,int ,int) ;
 int pm8001_mpi_build_cmd (struct pm8001_hba_info*,struct inbound_queue_table*,int ,struct fw_flash_Update_req*,int ) ;
 int upper_32_bits (int ) ;

int
pm8001_chip_fw_flash_update_build(struct pm8001_hba_info *pm8001_ha,
 void *fw_flash_updata_info, u32 tag)
{
 struct fw_flash_Update_req payload;
 struct fw_flash_updata_info *info;
 struct inbound_queue_table *circularQ;
 int ret;
 u32 opc = OPC_INB_FW_FLASH_UPDATE;

 memset(&payload, 0, sizeof(struct fw_flash_Update_req));
 circularQ = &pm8001_ha->inbnd_q_tbl[0];
 info = fw_flash_updata_info;
 payload.tag = cpu_to_le32(tag);
 payload.cur_image_len = cpu_to_le32(info->cur_image_len);
 payload.cur_image_offset = cpu_to_le32(info->cur_image_offset);
 payload.total_image_len = cpu_to_le32(info->total_image_len);
 payload.len = info->sgl.im_len.len ;
 payload.sgl_addr_lo =
  cpu_to_le32(lower_32_bits(le64_to_cpu(info->sgl.addr)));
 payload.sgl_addr_hi =
  cpu_to_le32(upper_32_bits(le64_to_cpu(info->sgl.addr)));
 ret = pm8001_mpi_build_cmd(pm8001_ha, circularQ, opc, &payload, 0);
 return ret;
}
