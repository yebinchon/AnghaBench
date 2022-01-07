
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int mv_col_buf_dma; unsigned int mv_col_buf_field_size; } ;
struct TYPE_4__ {TYPE_1__ h264; } ;
struct cedrus_ctx {TYPE_2__ codec; } ;
typedef unsigned int dma_addr_t ;



__attribute__((used)) static dma_addr_t cedrus_h264_mv_col_buf_addr(struct cedrus_ctx *ctx,
           unsigned int position,
           unsigned int field)
{
 dma_addr_t addr = ctx->codec.h264.mv_col_buf_dma;


 addr += position * ctx->codec.h264.mv_col_buf_field_size * 2;


 addr += field * ctx->codec.h264.mv_col_buf_field_size;

 return addr;
}
