
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUP_IO_M_MODE_BAM ;
 int QUP_IO_M_MODE_DMOV ;

__attribute__((used)) static inline bool spi_qup_is_dma_xfer(int mode)
{
 if (mode == QUP_IO_M_MODE_DMOV || mode == QUP_IO_M_MODE_BAM)
  return 1;

 return 0;
}
