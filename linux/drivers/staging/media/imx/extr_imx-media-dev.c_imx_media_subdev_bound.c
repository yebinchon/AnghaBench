
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int grp_id; int name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct imx_media_dev {int v4l2_dev; } ;


 int IMX_MEDIA_GRP_ID_IPU_CSI ;
 int imx_media_register_ipu_internal_subdevs (struct imx_media_dev*,struct v4l2_subdev*) ;
 struct imx_media_dev* notifier2dev (struct v4l2_async_notifier*) ;
 int v4l2_info (int *,char*,int ) ;

__attribute__((used)) static int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
      struct v4l2_subdev *sd,
      struct v4l2_async_subdev *asd)
{
 struct imx_media_dev *imxmd = notifier2dev(notifier);
 int ret;

 if (sd->grp_id & IMX_MEDIA_GRP_ID_IPU_CSI) {

  ret = imx_media_register_ipu_internal_subdevs(imxmd, sd);
  if (ret)
   return ret;
 }

 v4l2_info(&imxmd->v4l2_dev, "subdev %s bound\n", sd->name);

 return 0;
}
