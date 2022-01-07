
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_context {int teedev; } ;


 int tee_device_put (int ) ;
 int teedev_ctx_put (struct tee_context*) ;

__attribute__((used)) static void teedev_close_context(struct tee_context *ctx)
{
 tee_device_put(ctx->teedev);
 teedev_ctx_put(ctx);
}
