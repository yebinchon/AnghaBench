
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ this_residual; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct NCR5380_hostdata {int flags; } ;


 int FLAG_NO_PSEUDO_DMA ;
 scalar_t__ setup_use_pdma ;

__attribute__((used)) static int macscsi_dma_xfer_len(struct NCR5380_hostdata *hostdata,
                                struct scsi_cmnd *cmd)
{
 if (hostdata->flags & FLAG_NO_PSEUDO_DMA ||
     cmd->SCp.this_residual < setup_use_pdma)
  return 0;

 return cmd->SCp.this_residual;
}
