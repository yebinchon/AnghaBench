
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int entity; int ctrl_handler; } ;
struct TYPE_3__ {TYPE_2__ subdev; } ;
struct imgu_media_pipe {TYPE_1__ imgu_sd; } ;
struct imgu_device {struct imgu_media_pipe* imgu_pipe; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int ) ;
 int v4l2_device_unregister_subdev (TYPE_2__*) ;

__attribute__((used)) static void imgu_v4l2_subdev_cleanup(struct imgu_device *imgu, unsigned int i)
{
 struct imgu_media_pipe *imgu_pipe = &imgu->imgu_pipe[i];

 v4l2_device_unregister_subdev(&imgu_pipe->imgu_sd.subdev);
 v4l2_ctrl_handler_free(imgu_pipe->imgu_sd.subdev.ctrl_handler);
 media_entity_cleanup(&imgu_pipe->imgu_sd.subdev.entity);
}
