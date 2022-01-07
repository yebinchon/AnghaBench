
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_async_notifier_operations {int dummy; } ;
struct TYPE_2__ {struct v4l2_async_notifier_operations const* ops; int asd_list; } ;
struct imx_media_dev {int v4l2_dev; TYPE_1__ notifier; } ;


 int ENODEV ;
 struct v4l2_async_notifier_operations const imx_media_notifier_ops ;
 scalar_t__ list_empty (int *) ;
 int v4l2_async_notifier_register (int *,TYPE_1__*) ;
 int v4l2_err (int *,char*,...) ;

int imx_media_dev_notifier_register(struct imx_media_dev *imxmd,
       const struct v4l2_async_notifier_operations *ops)
{
 int ret;


 if (list_empty(&imxmd->notifier.asd_list)) {
  v4l2_err(&imxmd->v4l2_dev, "no subdevs\n");
  return -ENODEV;
 }


 imxmd->notifier.ops = ops ? ops : &imx_media_notifier_ops;
 ret = v4l2_async_notifier_register(&imxmd->v4l2_dev,
        &imxmd->notifier);
 if (ret) {
  v4l2_err(&imxmd->v4l2_dev,
    "v4l2_async_notifier_register failed with %d\n", ret);
  return ret;
 }

 return 0;
}
