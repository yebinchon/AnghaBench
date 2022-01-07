
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ encode_component; int camera_port; } ;
struct bm2835_mmal_dev {int v4l2_dev; int ctrl_handler; scalar_t__* component; int instance; TYPE_1__ capture; int vdev; } ;


 size_t COMP_CAMERA ;
 size_t COMP_IMAGE_ENCODE ;
 size_t COMP_PREVIEW ;
 size_t COMP_VIDEO_ENCODE ;
 int bcm2835_v4l2_debug ;
 int kfree (struct bm2835_mmal_dev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_info (int *,char*,int ) ;
 int vchiq_mmal_component_disable (int ,scalar_t__) ;
 int vchiq_mmal_component_finalise (int ,scalar_t__) ;
 int vchiq_mmal_port_connect_tunnel (int ,int ,int *) ;
 int video_device_node_name (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void bcm2835_cleanup_instance(struct bm2835_mmal_dev *dev)
{
 if (!dev)
  return;

 v4l2_info(&dev->v4l2_dev, "unregistering %s\n",
    video_device_node_name(&dev->vdev));

 video_unregister_device(&dev->vdev);

 if (dev->capture.encode_component) {
  v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
    "mmal_exit - disconnect tunnel\n");
  vchiq_mmal_port_connect_tunnel(dev->instance,
            dev->capture.camera_port, ((void*)0));
  vchiq_mmal_component_disable(dev->instance,
          dev->capture.encode_component);
 }
 vchiq_mmal_component_disable(dev->instance,
         dev->component[COMP_CAMERA]);

 vchiq_mmal_component_finalise(dev->instance,
          dev->component[COMP_VIDEO_ENCODE]);

 vchiq_mmal_component_finalise(dev->instance,
          dev->component[COMP_IMAGE_ENCODE]);

 vchiq_mmal_component_finalise(dev->instance,
          dev->component[COMP_PREVIEW]);

 vchiq_mmal_component_finalise(dev->instance,
          dev->component[COMP_CAMERA]);

 v4l2_ctrl_handler_free(&dev->ctrl_handler);

 v4l2_device_unregister(&dev->v4l2_dev);

 kfree(dev);
}
