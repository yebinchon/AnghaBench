
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hantro_ctx {int dummy; } ;


 int hantro_reset_encoded_fmt (struct hantro_ctx*) ;
 int hantro_reset_raw_fmt (struct hantro_ctx*) ;

void hantro_reset_fmts(struct hantro_ctx *ctx)
{
 hantro_reset_encoded_fmt(ctx);
 hantro_reset_raw_fmt(ctx);
}
