
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NCR5380_hostdata {int pdma_residual; } ;



__attribute__((used)) static int generic_NCR5380_dma_residual(struct NCR5380_hostdata *hostdata)
{
 return hostdata->pdma_residual;
}
