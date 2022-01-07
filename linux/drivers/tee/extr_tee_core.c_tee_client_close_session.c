
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct tee_context {TYPE_3__* teedev; } ;
struct TYPE_6__ {TYPE_2__* desc; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* close_session ) (struct tee_context*,int ) ;} ;


 int EINVAL ;
 int stub1 (struct tee_context*,int ) ;

int tee_client_close_session(struct tee_context *ctx, u32 session)
{
 if (!ctx->teedev->desc->ops->close_session)
  return -EINVAL;
 return ctx->teedev->desc->ops->close_session(ctx, session);
}
