
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vchiq_mmal_instance {int dummy; } ;
struct TYPE_3__ {int work; scalar_t__ status; } ;
struct TYPE_4__ {TYPE_1__ bulk; } ;
struct mmal_msg_context {TYPE_2__ u; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void bulk_receive_cb(struct vchiq_mmal_instance *instance,
       struct mmal_msg_context *msg_context)
{
 msg_context->u.bulk.status = 0;


 schedule_work(&msg_context->u.bulk.work);
}
