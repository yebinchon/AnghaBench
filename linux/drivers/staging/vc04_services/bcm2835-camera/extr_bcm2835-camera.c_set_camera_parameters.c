
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_instance {int dummy; } ;
struct vchiq_mmal_component {int control; } ;
struct mmal_parameter_camera_config {int stills_yuv422; int one_shot_stills; int max_preview_video_w; int max_preview_video_h; int num_preview_video_frames; int use_stc_timestamp; int fast_preview_resume; int stills_capture_circular_buffer_height; int max_stills_h; int max_stills_w; } ;
struct bm2835_mmal_dev {int max_height; int max_width; } ;
typedef int cam_config ;


 int MMAL_PARAMETER_CAMERA_CONFIG ;
 int MMAL_PARAM_TIMESTAMP_MODE_RAW_STC ;
 int max_video_height ;
 int max_video_width ;
 int vchiq_mmal_port_parameter_set (struct vchiq_mmal_instance*,int *,int ,struct mmal_parameter_camera_config*,int) ;

__attribute__((used)) static int set_camera_parameters(struct vchiq_mmal_instance *instance,
     struct vchiq_mmal_component *camera,
     struct bm2835_mmal_dev *dev)
{
 struct mmal_parameter_camera_config cam_config = {
  .max_stills_w = dev->max_width,
  .max_stills_h = dev->max_height,
  .stills_yuv422 = 1,
  .one_shot_stills = 1,
  .max_preview_video_w = (max_video_width > 1920) ?
      max_video_width : 1920,
  .max_preview_video_h = (max_video_height > 1088) ?
      max_video_height : 1088,
  .num_preview_video_frames = 3,
  .stills_capture_circular_buffer_height = 0,
  .fast_preview_resume = 0,
  .use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
 };

 return vchiq_mmal_port_parameter_set(instance, &camera->control,
         MMAL_PARAMETER_CAMERA_CONFIG,
         &cam_config, sizeof(cam_config));
}
