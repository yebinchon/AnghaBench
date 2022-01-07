
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; struct queued_ctx* context; } ;
struct queued_ctx {int status; int num; int complete; int pending; struct urb** urbs; } ;


 int ECONNRESET ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static void unlink_queued_callback(struct urb *urb)
{
 int status = urb->status;
 struct queued_ctx *ctx = urb->context;

 if (ctx->status)
  goto done;
 if (urb == ctx->urbs[ctx->num - 4] || urb == ctx->urbs[ctx->num - 2]) {
  if (status == -ECONNRESET)
   goto done;

 }
 if (status != 0)
  ctx->status = status;

 done:
 if (atomic_dec_and_test(&ctx->pending))
  complete(&ctx->complete);
}
