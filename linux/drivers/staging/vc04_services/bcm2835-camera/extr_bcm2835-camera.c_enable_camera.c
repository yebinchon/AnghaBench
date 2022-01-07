
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bm2835_mmal_dev {int camera_use_count; int v4l2_dev; TYPE_1__** component; int instance; int camera_num; } ;
struct TYPE_2__ {int control; } ;


 size_t COMP_CAMERA ;
 int EINVAL ;
 int MMAL_PARAMETER_CAMERA_NUM ;
 int bcm2835_v4l2_debug ;
 int v4l2_dbg (int,int ,int *,char*,int ) ;
 int v4l2_err (int *,char*,int) ;
 int vchiq_mmal_component_enable (int ,TYPE_1__*) ;
 int vchiq_mmal_port_parameter_set (int ,int *,int ,int *,int) ;

__attribute__((used)) static int enable_camera(struct bm2835_mmal_dev *dev)
{
 int ret;

 if (!dev->camera_use_count) {
  ret = vchiq_mmal_port_parameter_set(
   dev->instance,
   &dev->component[COMP_CAMERA]->control,
   MMAL_PARAMETER_CAMERA_NUM, &dev->camera_num,
   sizeof(dev->camera_num));
  if (ret < 0) {
   v4l2_err(&dev->v4l2_dev,
     "Failed setting camera num, ret %d\n", ret);
   return -EINVAL;
  }

  ret = vchiq_mmal_component_enable(
    dev->instance,
    dev->component[COMP_CAMERA]);
  if (ret < 0) {
   v4l2_err(&dev->v4l2_dev,
     "Failed enabling camera, ret %d\n", ret);
   return -EINVAL;
  }
 }
 dev->camera_use_count++;
 v4l2_dbg(1, bcm2835_v4l2_debug,
   &dev->v4l2_dev, "enabled camera (refcount %d)\n",
   dev->camera_use_count);
 return 0;
}
