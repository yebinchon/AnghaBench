
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; int v4l2_dev; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;


 int v4l2_info (int ,char*,int ) ;

__attribute__((used)) static int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
      struct v4l2_subdev *sd,
      struct v4l2_async_subdev *asd)
{
 v4l2_info(sd->v4l2_dev, "subdev %s bound\n", sd->name);

 return 0;
}
