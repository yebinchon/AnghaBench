
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct NCR5380_hostdata {int dummy; } ;



__attribute__((used)) static inline int NCR5380_dma_xfer_none(struct NCR5380_hostdata *hostdata,
                                        struct scsi_cmnd *cmd)
{
 return 0;
}
