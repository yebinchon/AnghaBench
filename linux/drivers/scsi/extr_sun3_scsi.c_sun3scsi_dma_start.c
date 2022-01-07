
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short csr; int dma_count_hi; int dma_count_lo; int fifo_count_hi; int fifo_count; } ;


 int UDC_CHN_START ;
 int UDC_CSR ;
 TYPE_1__* dregs ;
 int sun3_dma_orig_count ;
 int sun3_udc_write (int ,int ) ;

__attribute__((used)) static inline int sun3scsi_dma_start(unsigned long count, unsigned char *data)
{
    sun3_udc_write(UDC_CHN_START, UDC_CSR);


    return 0;
}
