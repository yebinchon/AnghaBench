
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct imx_media_dev {int md; int v4l2_dev; int notifier; } ;
struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (struct imx_media_dev*) ;
 int PTR_ERR (struct imx_media_dev*) ;
 int imx_media_add_of_subdevs (struct imx_media_dev*,struct device_node*) ;
 struct imx_media_dev* imx_media_dev_init (struct device*,int *) ;
 int imx_media_dev_notifier_register (struct imx_media_dev*,int *) ;
 int imx_media_notifier_ops ;
 int media_device_cleanup (int *) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_err (int *,char*,int) ;

__attribute__((used)) static int imx_media_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 struct imx_media_dev *imxmd;
 int ret;

 imxmd = imx_media_dev_init(dev, ((void*)0));
 if (IS_ERR(imxmd))
  return PTR_ERR(imxmd);

 ret = imx_media_add_of_subdevs(imxmd, node);
 if (ret) {
  v4l2_err(&imxmd->v4l2_dev,
    "add_of_subdevs failed with %d\n", ret);
  goto cleanup;
 }

 ret = imx_media_dev_notifier_register(imxmd, &imx_media_notifier_ops);
 if (ret)
  goto cleanup;

 return 0;

cleanup:
 v4l2_async_notifier_cleanup(&imxmd->notifier);
 v4l2_device_unregister(&imxmd->v4l2_dev);
 media_device_cleanup(&imxmd->md);

 return ret;
}
