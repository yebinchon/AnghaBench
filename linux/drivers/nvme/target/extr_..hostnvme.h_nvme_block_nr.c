
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvme_ns {int lba_shift; } ;
typedef int sector_t ;



__attribute__((used)) static inline u64 nvme_block_nr(struct nvme_ns *ns, sector_t sector)
{
 return (sector >> (ns->lba_shift - 9));
}
