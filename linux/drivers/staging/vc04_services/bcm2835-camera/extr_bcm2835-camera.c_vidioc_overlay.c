
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vchiq_mmal_port {int dummy; } ;
struct file {int dummy; } ;
struct bm2835_mmal_dev {int instance; int v4l2_dev; TYPE_1__** component; } ;
struct TYPE_3__ {struct vchiq_mmal_port* input; struct vchiq_mmal_port* output; scalar_t__ enabled; } ;


 size_t CAM_PORT_PREVIEW ;
 size_t COMP_CAMERA ;
 size_t COMP_PREVIEW ;
 int EINVAL ;
 int bcm2835_v4l2_debug ;
 int disable_camera (struct bm2835_mmal_dev*) ;
 scalar_t__ enable_camera (struct bm2835_mmal_dev*) ;
 int set_overlay_params (struct bm2835_mmal_dev*,struct vchiq_mmal_port*) ;
 int v4l2_dbg (int,int ,int *,char*,struct vchiq_mmal_port*,struct vchiq_mmal_port*) ;
 int vchiq_mmal_component_disable (int ,TYPE_1__*) ;
 int vchiq_mmal_component_enable (int ,TYPE_1__*) ;
 int vchiq_mmal_port_connect_tunnel (int ,struct vchiq_mmal_port*,struct vchiq_mmal_port*) ;
 int vchiq_mmal_port_disable (int ,struct vchiq_mmal_port*) ;
 int vchiq_mmal_port_enable (int ,struct vchiq_mmal_port*,int *) ;
 int vchiq_mmal_port_set_format (int ,struct vchiq_mmal_port*) ;
 struct bm2835_mmal_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_overlay(struct file *file, void *f, unsigned int on)
{
 int ret;
 struct bm2835_mmal_dev *dev = video_drvdata(file);
 struct vchiq_mmal_port *src;
 struct vchiq_mmal_port *dst;

 if ((on && dev->component[COMP_PREVIEW]->enabled) ||
     (!on && !dev->component[COMP_PREVIEW]->enabled))
  return 0;

 src =
     &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];

 if (!on) {

  ret = vchiq_mmal_port_disable(dev->instance, src);
  if (!ret)
   ret =
       vchiq_mmal_port_connect_tunnel(dev->instance, src,
          ((void*)0));
  if (ret >= 0)
   ret = vchiq_mmal_component_disable(
     dev->instance,
     dev->component[COMP_PREVIEW]);

  disable_camera(dev);
  return ret;
 }


 dst = &dev->component[COMP_PREVIEW]->input[0];

 ret = vchiq_mmal_port_set_format(dev->instance, src);
 if (ret < 0)
  return ret;

 ret = set_overlay_params(dev, dst);
 if (ret < 0)
  return ret;

 if (enable_camera(dev) < 0)
  return -EINVAL;

 ret = vchiq_mmal_component_enable(
   dev->instance,
   dev->component[COMP_PREVIEW]);
 if (ret < 0)
  return ret;

 v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "connecting %p to %p\n",
   src, dst);
 ret = vchiq_mmal_port_connect_tunnel(dev->instance, src, dst);
 if (ret)
  return ret;

 return vchiq_mmal_port_enable(dev->instance, src, ((void*)0));
}
