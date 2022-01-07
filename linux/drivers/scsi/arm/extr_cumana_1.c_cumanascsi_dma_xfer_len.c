
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int transfersize; } ;
struct NCR5380_hostdata {int dummy; } ;



__attribute__((used)) static int cumanascsi_dma_xfer_len(struct NCR5380_hostdata *hostdata,
                                   struct scsi_cmnd *cmd)
{
 return cmd->transfersize;
}
