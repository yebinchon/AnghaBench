
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct sis_sync_cmd_params {int* mailbox; } ;
struct sis_base_struct {int error_buffer_num_elements; int error_buffer_element_length; int error_buffer_paddr_high; int error_buffer_paddr_low; int revision; } ;
struct pqi_ctrl_info {void* max_io_slots; TYPE_1__* pci_dev; scalar_t__ error_buffer_dma_handle; } ;
typedef int params ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* PQI_ERROR_BUFFER_ELEMENT_LENGTH ;
 struct sis_base_struct* PTR_ALIGN (void*,scalar_t__) ;
 scalar_t__ SIS_BASE_STRUCT_ALIGNMENT ;
 void* SIS_BASE_STRUCT_REVISION ;
 int SIS_CMD_INIT_BASE_STRUCT_ADDRESS ;
 scalar_t__ dma_map_single (int *,struct sis_base_struct*,int,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int dma_unmap_single (int *,scalar_t__,int,int ) ;
 int kfree (void*) ;
 void* kzalloc (scalar_t__,int ) ;
 void* lower_32_bits (unsigned long) ;
 int memset (struct sis_sync_cmd_params*,int ,int) ;
 int put_unaligned_le32 (void*,int *) ;
 int sis_send_sync_cmd (struct pqi_ctrl_info*,int ,struct sis_sync_cmd_params*) ;
 void* upper_32_bits (unsigned long) ;

int sis_init_base_struct_addr(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 void *base_struct_unaligned;
 struct sis_base_struct *base_struct;
 struct sis_sync_cmd_params params;
 unsigned long error_buffer_paddr;
 dma_addr_t bus_address;

 base_struct_unaligned = kzalloc(sizeof(*base_struct)
  + SIS_BASE_STRUCT_ALIGNMENT - 1, GFP_KERNEL);
 if (!base_struct_unaligned)
  return -ENOMEM;

 base_struct = PTR_ALIGN(base_struct_unaligned,
  SIS_BASE_STRUCT_ALIGNMENT);
 error_buffer_paddr = (unsigned long)ctrl_info->error_buffer_dma_handle;

 put_unaligned_le32(SIS_BASE_STRUCT_REVISION, &base_struct->revision);
 put_unaligned_le32(lower_32_bits(error_buffer_paddr),
  &base_struct->error_buffer_paddr_low);
 put_unaligned_le32(upper_32_bits(error_buffer_paddr),
  &base_struct->error_buffer_paddr_high);
 put_unaligned_le32(PQI_ERROR_BUFFER_ELEMENT_LENGTH,
  &base_struct->error_buffer_element_length);
 put_unaligned_le32(ctrl_info->max_io_slots,
  &base_struct->error_buffer_num_elements);

 bus_address = dma_map_single(&ctrl_info->pci_dev->dev, base_struct,
  sizeof(*base_struct), DMA_TO_DEVICE);
 if (dma_mapping_error(&ctrl_info->pci_dev->dev, bus_address)) {
  rc = -ENOMEM;
  goto out;
 }

 memset(&params, 0, sizeof(params));
 params.mailbox[1] = lower_32_bits((u64)bus_address);
 params.mailbox[2] = upper_32_bits((u64)bus_address);
 params.mailbox[3] = sizeof(*base_struct);

 rc = sis_send_sync_cmd(ctrl_info, SIS_CMD_INIT_BASE_STRUCT_ADDRESS,
  &params);

 dma_unmap_single(&ctrl_info->pci_dev->dev, bus_address,
   sizeof(*base_struct), DMA_TO_DEVICE);
out:
 kfree(base_struct_unaligned);

 return rc;
}
