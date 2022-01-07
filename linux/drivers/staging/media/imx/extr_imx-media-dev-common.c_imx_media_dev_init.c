
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct media_device_ops {int dummy; } ;
struct TYPE_6__ {struct device* dev; struct media_device_ops const* ops; int model; } ;
struct TYPE_5__ {int name; int notify; TYPE_3__* mdev; } ;
struct imx_media_dev {TYPE_3__ md; int notifier; int vdev_list; TYPE_1__ v4l2_dev; int mutex; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct imx_media_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_drvdata (struct device*,struct imx_media_dev*) ;
 struct imx_media_dev* devm_kzalloc (struct device*,int,int ) ;
 struct media_device_ops const imx_media_md_ops ;
 int imx_media_notify ;
 int media_device_cleanup (TYPE_3__*) ;
 int media_device_init (TYPE_3__*) ;
 int mutex_init (int *) ;
 int strscpy (int ,char*,int) ;
 int v4l2_async_notifier_init (int *) ;
 int v4l2_device_register (struct device*,TYPE_1__*) ;
 int v4l2_err (TYPE_1__*,char*,int) ;

struct imx_media_dev *imx_media_dev_init(struct device *dev,
      const struct media_device_ops *ops)
{
 struct imx_media_dev *imxmd;
 int ret;

 imxmd = devm_kzalloc(dev, sizeof(*imxmd), GFP_KERNEL);
 if (!imxmd)
  return ERR_PTR(-ENOMEM);

 dev_set_drvdata(dev, imxmd);

 strscpy(imxmd->md.model, "imx-media", sizeof(imxmd->md.model));
 imxmd->md.ops = ops ? ops : &imx_media_md_ops;
 imxmd->md.dev = dev;

 mutex_init(&imxmd->mutex);

 imxmd->v4l2_dev.mdev = &imxmd->md;
 imxmd->v4l2_dev.notify = imx_media_notify;
 strscpy(imxmd->v4l2_dev.name, "imx-media",
  sizeof(imxmd->v4l2_dev.name));

 media_device_init(&imxmd->md);

 ret = v4l2_device_register(dev, &imxmd->v4l2_dev);
 if (ret < 0) {
  v4l2_err(&imxmd->v4l2_dev,
    "Failed to register v4l2_device: %d\n", ret);
  goto cleanup;
 }

 INIT_LIST_HEAD(&imxmd->vdev_list);

 v4l2_async_notifier_init(&imxmd->notifier);

 return imxmd;

cleanup:
 media_device_cleanup(&imxmd->md);

 return ERR_PTR(ret);
}
