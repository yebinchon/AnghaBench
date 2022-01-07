
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tee_ioctl_cancel_arg {int session; int cancel_id; } ;
struct tee_context {TYPE_3__* teedev; } ;
struct TYPE_6__ {TYPE_2__* desc; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* cancel_req ) (struct tee_context*,int ,int ) ;} ;


 int EINVAL ;
 int stub1 (struct tee_context*,int ,int ) ;

int tee_client_cancel_req(struct tee_context *ctx,
     struct tee_ioctl_cancel_arg *arg)
{
 if (!ctx->teedev->desc->ops->cancel_req)
  return -EINVAL;
 return ctx->teedev->desc->ops->cancel_req(ctx, arg->cancel_id,
        arg->session);
}
