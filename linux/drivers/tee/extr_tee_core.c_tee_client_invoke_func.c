
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tee_param {int dummy; } ;
struct tee_ioctl_invoke_arg {int dummy; } ;
struct tee_context {TYPE_3__* teedev; } ;
struct TYPE_6__ {TYPE_2__* desc; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* invoke_func ) (struct tee_context*,struct tee_ioctl_invoke_arg*,struct tee_param*) ;} ;


 int EINVAL ;
 int stub1 (struct tee_context*,struct tee_ioctl_invoke_arg*,struct tee_param*) ;

int tee_client_invoke_func(struct tee_context *ctx,
      struct tee_ioctl_invoke_arg *arg,
      struct tee_param *param)
{
 if (!ctx->teedev->desc->ops->invoke_func)
  return -EINVAL;
 return ctx->teedev->desc->ops->invoke_func(ctx, arg, param);
}
