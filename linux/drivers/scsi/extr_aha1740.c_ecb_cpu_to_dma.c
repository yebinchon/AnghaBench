
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aha1740_hostdata {int ecb_dma_addr; scalar_t__ ecb; } ;
struct Scsi_Host {int dummy; } ;
typedef int dma_addr_t ;


 struct aha1740_hostdata* HOSTDATA (struct Scsi_Host*) ;

__attribute__((used)) static inline dma_addr_t ecb_cpu_to_dma (struct Scsi_Host *host, void *cpu)
{
 struct aha1740_hostdata *hdata = HOSTDATA (host);
 dma_addr_t offset;

 offset = (char *) cpu - (char *) hdata->ecb;

 return hdata->ecb_dma_addr + offset;
}
