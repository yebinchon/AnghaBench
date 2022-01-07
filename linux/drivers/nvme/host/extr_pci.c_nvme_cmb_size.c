
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvme_dev {int cmbsz; } ;


 int NVME_CMBSZ_SZ_MASK ;
 int NVME_CMBSZ_SZ_SHIFT ;

__attribute__((used)) static u32 nvme_cmb_size(struct nvme_dev *dev)
{
 return (dev->cmbsz >> NVME_CMBSZ_SZ_SHIFT) & NVME_CMBSZ_SZ_MASK;
}
