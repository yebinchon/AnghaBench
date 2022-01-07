
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ dword_3; void* dword_2; scalar_t__ dword_1; void* dword_0; } ;
struct utp_transfer_req_desc {scalar_t__ prd_table_length; TYPE_1__ header; } ;
struct ufshcd_lrb {int command_type; scalar_t__ intr_cmd; struct utp_transfer_req_desc* utr_descriptor_ptr; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int OCS_INVALID_COMMAND_STATUS ;
 int UPIU_CMD_FLAGS_NONE ;
 int UPIU_CMD_FLAGS_READ ;
 int UPIU_CMD_FLAGS_WRITE ;
 int UPIU_COMMAND_TYPE_OFFSET ;
 int UTP_DEVICE_TO_HOST ;
 int UTP_HOST_TO_DEVICE ;
 int UTP_NO_DATA_TRANSFER ;
 int UTP_REQ_DESC_INT_CMD ;
 void* cpu_to_le32 (int) ;

__attribute__((used)) static void ufshcd_prepare_req_desc_hdr(struct ufshcd_lrb *lrbp,
   u32 *upiu_flags, enum dma_data_direction cmd_dir)
{
 struct utp_transfer_req_desc *req_desc = lrbp->utr_descriptor_ptr;
 u32 data_direction;
 u32 dword_0;

 if (cmd_dir == DMA_FROM_DEVICE) {
  data_direction = UTP_DEVICE_TO_HOST;
  *upiu_flags = UPIU_CMD_FLAGS_READ;
 } else if (cmd_dir == DMA_TO_DEVICE) {
  data_direction = UTP_HOST_TO_DEVICE;
  *upiu_flags = UPIU_CMD_FLAGS_WRITE;
 } else {
  data_direction = UTP_NO_DATA_TRANSFER;
  *upiu_flags = UPIU_CMD_FLAGS_NONE;
 }

 dword_0 = data_direction | (lrbp->command_type
    << UPIU_COMMAND_TYPE_OFFSET);
 if (lrbp->intr_cmd)
  dword_0 |= UTP_REQ_DESC_INT_CMD;


 req_desc->header.dword_0 = cpu_to_le32(dword_0);

 req_desc->header.dword_1 = 0;





 req_desc->header.dword_2 =
  cpu_to_le32(OCS_INVALID_COMMAND_STATUS);

 req_desc->header.dword_3 = 0;

 req_desc->prd_table_length = 0;
}
