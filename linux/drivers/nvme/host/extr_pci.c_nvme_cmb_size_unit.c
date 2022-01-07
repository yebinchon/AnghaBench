
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned long long u64 ;
struct nvme_dev {int cmbsz; } ;


 int NVME_CMBSZ_SZU_MASK ;
 int NVME_CMBSZ_SZU_SHIFT ;

__attribute__((used)) static u64 nvme_cmb_size_unit(struct nvme_dev *dev)
{
 u8 szu = (dev->cmbsz >> NVME_CMBSZ_SZU_SHIFT) & NVME_CMBSZ_SZU_MASK;

 return 1ULL << (12 + 4 * szu);
}
