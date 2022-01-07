
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tee_ioctl_version_data {int dummy; } ;
struct tee_context {TYPE_3__* teedev; } ;
struct TYPE_6__ {TYPE_2__* desc; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* get_version ) (TYPE_3__*,struct tee_ioctl_version_data*) ;} ;


 int stub1 (TYPE_3__*,struct tee_ioctl_version_data*) ;

void tee_client_get_version(struct tee_context *ctx,
       struct tee_ioctl_version_data *vers)
{
 ctx->teedev->desc->ops->get_version(ctx->teedev, vers);
}
