
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int field; int colorspace; int height; int width; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; } ;
struct v4l2_subdev {int ctrl_handler; int grp_id; } ;
struct soc_camera_device {int field; int colorspace; int user_height; int user_width; int pdev; int ctrl_handler; TYPE_1__* vdev; } ;
struct TYPE_2__ {int tvnorms; } ;


 int V4L2_FIELD_ANY ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int dev_err (int ,char*,int) ;
 int g_tvnorms ;
 int get_fmt ;
 int pad ;
 int soc_camera_add_device (struct soc_camera_device*) ;
 int soc_camera_free_user_formats (struct soc_camera_device*) ;
 int soc_camera_grp_id (struct soc_camera_device*) ;
 int soc_camera_init_user_formats (struct soc_camera_device*) ;
 int soc_camera_remove_device (struct soc_camera_device*) ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 int soc_camera_video_start (struct soc_camera_device*) ;
 int v4l2_ctrl_add_handler (int *,int ,int *,int) ;
 int v4l2_set_subdev_hostdata (struct v4l2_subdev*,struct soc_camera_device*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,...) ;
 int video ;

__attribute__((used)) static int soc_camera_probe_finish(struct soc_camera_device *icd)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 struct v4l2_subdev_format fmt = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 struct v4l2_mbus_framefmt *mf = &fmt.format;
 int ret;

 sd->grp_id = soc_camera_grp_id(icd);
 v4l2_set_subdev_hostdata(sd, icd);

 v4l2_subdev_call(sd, video, g_tvnorms, &icd->vdev->tvnorms);

 ret = v4l2_ctrl_add_handler(&icd->ctrl_handler, sd->ctrl_handler,
        ((void*)0), 1);
 if (ret < 0)
  return ret;

 ret = soc_camera_add_device(icd);
 if (ret < 0) {
  dev_err(icd->pdev, "Couldn't activate the camera: %d\n", ret);
  return ret;
 }


 ret = soc_camera_init_user_formats(icd);
 if (ret < 0)
  goto eusrfmt;

 icd->field = V4L2_FIELD_ANY;

 ret = soc_camera_video_start(icd);
 if (ret < 0)
  goto evidstart;


 if (!v4l2_subdev_call(sd, pad, get_fmt, ((void*)0), &fmt)) {
  icd->user_width = mf->width;
  icd->user_height = mf->height;
  icd->colorspace = mf->colorspace;
  icd->field = mf->field;
 }
 soc_camera_remove_device(icd);

 return 0;

evidstart:
 soc_camera_free_user_formats(icd);
eusrfmt:
 soc_camera_remove_device(icd);

 return ret;
}
