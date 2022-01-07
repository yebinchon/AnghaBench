
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct imx7_csi {int * cc; } ;


 int IMX7_CSI_PADS_NUM ;
 int V4L2_FIELD_NONE ;
 int imx_media_init_mbus_fmt (struct v4l2_mbus_framefmt*,int,int,int ,int ,int *) ;
 struct imx7_csi* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int) ;

__attribute__((used)) static int imx7_csi_init_cfg(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg)
{
 struct imx7_csi *csi = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *mf;
 int ret;
 int i;

 for (i = 0; i < IMX7_CSI_PADS_NUM; i++) {
  mf = v4l2_subdev_get_try_format(sd, cfg, i);

  ret = imx_media_init_mbus_fmt(mf, 800, 600, 0, V4L2_FIELD_NONE,
           &csi->cc[i]);
  if (ret < 0)
   return ret;
 }

 return 0;
}
