
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_sge {int * sge_fl_buf_size; } ;
struct csio_dma_buf {int paddr; } ;



__attribute__((used)) static inline uint32_t
csio_wr_fl_bufsz(struct csio_sge *sge, struct csio_dma_buf *buf)
{
 return sge->sge_fl_buf_size[buf->paddr & 0xF];
}
