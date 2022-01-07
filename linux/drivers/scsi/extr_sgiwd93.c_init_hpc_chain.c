
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ip22_hostdata {scalar_t__ dma; scalar_t__ cpu; } ;
struct TYPE_2__ {scalar_t__ pnext; int cntinfo; } ;
struct hpc_chunk {TYPE_1__ desc; } ;
typedef scalar_t__ dma_addr_t ;


 int HPCDMA_EOX ;
 unsigned long HPC_DMA_SIZE ;

__attribute__((used)) static inline void init_hpc_chain(struct ip22_hostdata *hdata)
{
 struct hpc_chunk *hcp = (struct hpc_chunk *)hdata->cpu;
 dma_addr_t dma = hdata->dma;
 unsigned long start, end;

 start = (unsigned long) hcp;
 end = start + HPC_DMA_SIZE;
 while (start < end) {
  hcp->desc.pnext = (u32) (dma + sizeof(struct hpc_chunk));
  hcp->desc.cntinfo = HPCDMA_EOX;
  hcp++;
  dma += sizeof(struct hpc_chunk);
  start += sizeof(struct hpc_chunk);
 };
 hcp--;
 hcp->desc.pnext = hdata->dma;
}
