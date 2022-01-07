
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int entity; } ;
struct imx7_csi {int vdev; TYPE_2__* pad; TYPE_1__* frame_interval; int * cc; int * format_mbus; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int numerator; int denominator; } ;


 int IMX7_CSI_PADS_NUM ;
 int IMX7_CSI_PAD_SINK ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int V4L2_FIELD_NONE ;
 int imx_media_capture_device_register (int ) ;
 int imx_media_init_mbus_fmt (int *,int,int,int ,int ,int *) ;
 int media_entity_pads_init (int *,int,TYPE_2__*) ;
 struct imx7_csi* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int imx7_csi_registered(struct v4l2_subdev *sd)
{
 struct imx7_csi *csi = v4l2_get_subdevdata(sd);
 int ret;
 int i;

 for (i = 0; i < IMX7_CSI_PADS_NUM; i++) {
  csi->pad[i].flags = (i == IMX7_CSI_PAD_SINK) ?
   MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;


  ret = imx_media_init_mbus_fmt(&csi->format_mbus[i],
           800, 600, 0, V4L2_FIELD_NONE,
           &csi->cc[i]);
  if (ret < 0)
   return ret;


  csi->frame_interval[i].numerator = 1;
  csi->frame_interval[i].denominator = 30;
 }

 ret = media_entity_pads_init(&sd->entity, IMX7_CSI_PADS_NUM, csi->pad);
 if (ret < 0)
  return ret;

 return imx_media_capture_device_register(csi->vdev);
}
