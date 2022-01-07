
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NCR5380_hostdata {int dummy; } ;


 int atari_dma_residual ;

__attribute__((used)) static int atari_scsi_dma_residual(struct NCR5380_hostdata *hostdata)
{
 return atari_dma_residual;
}
