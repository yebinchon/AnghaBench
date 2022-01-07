
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NCR5380_hostdata {int dummy; } ;


 int sun3scsi_dma_setup (struct NCR5380_hostdata*,unsigned char*,int,int) ;

__attribute__((used)) static inline int sun3scsi_dma_send_setup(struct NCR5380_hostdata *hostdata,
                                          unsigned char *data, int count)
{
 return sun3scsi_dma_setup(hostdata, data, count, 1);
}
