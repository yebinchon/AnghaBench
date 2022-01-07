
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vchiq_mmal_port {int dummy; } ;
struct v4l2_ctrl {int val; } ;
struct bm2835_mmal_v4l2_ctrl {int mmal_id; } ;
struct TYPE_4__ {int encode_bitrate_mode; } ;
struct bm2835_mmal_dev {int instance; TYPE_2__ capture; TYPE_1__** component; } ;
typedef int bitrate_mode ;
struct TYPE_3__ {struct vchiq_mmal_port* output; } ;


 size_t COMP_VIDEO_ENCODE ;
 int MMAL_VIDEO_RATECONTROL_CONSTANT ;
 int MMAL_VIDEO_RATECONTROL_VARIABLE ;


 int vchiq_mmal_port_parameter_set (int ,struct vchiq_mmal_port*,int ,int *,int) ;

__attribute__((used)) static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
     struct v4l2_ctrl *ctrl,
     const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
{
 u32 bitrate_mode;
 struct vchiq_mmal_port *encoder_out;

 encoder_out = &dev->component[COMP_VIDEO_ENCODE]->output[0];

 dev->capture.encode_bitrate_mode = ctrl->val;
 switch (ctrl->val) {
 default:
 case 128:
  bitrate_mode = MMAL_VIDEO_RATECONTROL_VARIABLE;
  break;
 case 129:
  bitrate_mode = MMAL_VIDEO_RATECONTROL_CONSTANT;
  break;
 }

 vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
          mmal_ctrl->mmal_id,
          &bitrate_mode,
          sizeof(bitrate_mode));
 return 0;
}
