
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hantro_ctx {scalar_t__ buf_finish; } ;


 scalar_t__ hantro_enc_buf_finish ;

bool hantro_is_encoder_ctx(const struct hantro_ctx *ctx)
{
 return ctx->buf_finish == hantro_enc_buf_finish;
}
