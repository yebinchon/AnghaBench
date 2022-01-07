
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_context {int dummy; } ;


 int teedev_close_context (struct tee_context*) ;

void tee_client_close_context(struct tee_context *ctx)
{
 teedev_close_context(ctx);
}
