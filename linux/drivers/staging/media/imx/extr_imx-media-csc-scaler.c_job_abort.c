
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_csc_scaler_ctx {scalar_t__ icc; } ;


 int ipu_image_convert_abort (scalar_t__) ;

__attribute__((used)) static void job_abort(void *_ctx)
{
 struct ipu_csc_scaler_ctx *ctx = _ctx;

 if (ctx->icc)
  ipu_image_convert_abort(ctx->icc);
}
