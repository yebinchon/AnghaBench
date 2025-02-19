
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct megasas_instance {scalar_t__ consistent_mask_64bit; } ;
struct TYPE_6__ {TYPE_2__* sge32; TYPE_1__* sge64; } ;
struct megasas_dcmd_frame {int flags; TYPE_3__ sgl; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {void* length; void* phys_addr; } ;
struct TYPE_4__ {void* length; int phys_addr; } ;


 int MFI_FRAME_SGL64 ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int lower_32_bits (int ) ;

void megasas_set_dma_settings(struct megasas_instance *instance,
         struct megasas_dcmd_frame *dcmd,
         dma_addr_t dma_addr, u32 dma_len)
{
 if (instance->consistent_mask_64bit) {
  dcmd->sgl.sge64[0].phys_addr = cpu_to_le64(dma_addr);
  dcmd->sgl.sge64[0].length = cpu_to_le32(dma_len);
  dcmd->flags = cpu_to_le16(dcmd->flags | MFI_FRAME_SGL64);

 } else {
  dcmd->sgl.sge32[0].phys_addr =
    cpu_to_le32(lower_32_bits(dma_addr));
  dcmd->sgl.sge32[0].length = cpu_to_le32(dma_len);
  dcmd->flags = cpu_to_le16(dcmd->flags);
 }
}
