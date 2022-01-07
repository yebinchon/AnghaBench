
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int device; int admin_q; int page_size; } ;
struct nvme_dev {int host_mem_size; int nr_host_mem_descs; TYPE_2__ ctrl; int host_mem_descs_dma; } ;
struct TYPE_3__ {void* dword15; void* dword14; void* dword13; void* dword12; void* dword11; void* fid; int opcode; } ;
struct nvme_command {TYPE_1__ features; } ;
typedef int c ;


 int NVME_FEAT_HOST_MEM_BUF ;
 void* cpu_to_le32 (int) ;
 int dev_warn (int ,char*,int,int) ;
 int ilog2 (int ) ;
 int lower_32_bits (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_set_features ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,int *,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int nvme_set_host_mem(struct nvme_dev *dev, u32 bits)
{
 u64 dma_addr = dev->host_mem_descs_dma;
 struct nvme_command c;
 int ret;

 memset(&c, 0, sizeof(c));
 c.features.opcode = nvme_admin_set_features;
 c.features.fid = cpu_to_le32(NVME_FEAT_HOST_MEM_BUF);
 c.features.dword11 = cpu_to_le32(bits);
 c.features.dword12 = cpu_to_le32(dev->host_mem_size >>
           ilog2(dev->ctrl.page_size));
 c.features.dword13 = cpu_to_le32(lower_32_bits(dma_addr));
 c.features.dword14 = cpu_to_le32(upper_32_bits(dma_addr));
 c.features.dword15 = cpu_to_le32(dev->nr_host_mem_descs);

 ret = nvme_submit_sync_cmd(dev->ctrl.admin_q, &c, ((void*)0), 0);
 if (ret) {
  dev_warn(dev->ctrl.device,
    "failed to set host mem (err %d, flags %#x).\n",
    ret, bits);
 }
 return ret;
}
