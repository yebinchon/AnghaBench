
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ctrl_handler; int * mdev; } ;
struct imgu_device {int streaming; int media_dev; TYPE_1__ v4l2_dev; TYPE_4__* pci_dev; } ;
struct TYPE_6__ {int dev; } ;


 int IMGU_MAX_PIPE_NUM ;
 int IMGU_NAME ;
 int dev_err (int *,char*,int) ;
 int imgu_v4l2_cleanup_pipes (struct imgu_device*,int ) ;
 int imgu_v4l2_register_pipes (struct imgu_device*) ;
 int media_device_cleanup (int *) ;
 int media_device_pci_init (int *,TYPE_4__*,int ) ;
 int media_device_register (int *) ;
 int v4l2_device_register (int *,TYPE_1__*) ;
 int v4l2_device_register_subdev_nodes (TYPE_1__*) ;
 int v4l2_device_unregister (TYPE_1__*) ;

int imgu_v4l2_register(struct imgu_device *imgu)
{
 int r;


 imgu->streaming = 0;


 media_device_pci_init(&imgu->media_dev, imgu->pci_dev, IMGU_NAME);


 imgu->v4l2_dev.mdev = &imgu->media_dev;
 imgu->v4l2_dev.ctrl_handler = ((void*)0);
 r = v4l2_device_register(&imgu->pci_dev->dev, &imgu->v4l2_dev);
 if (r) {
  dev_err(&imgu->pci_dev->dev,
   "failed to register V4L2 device (%d)\n", r);
  goto fail_v4l2_dev;
 }

 r = imgu_v4l2_register_pipes(imgu);
 if (r) {
  dev_err(&imgu->pci_dev->dev,
   "failed to register pipes (%d)\n", r);
  goto fail_v4l2_pipes;
 }

 r = v4l2_device_register_subdev_nodes(&imgu->v4l2_dev);
 if (r) {
  dev_err(&imgu->pci_dev->dev,
   "failed to register subdevs (%d)\n", r);
  goto fail_subdevs;
 }

 r = media_device_register(&imgu->media_dev);
 if (r) {
  dev_err(&imgu->pci_dev->dev,
   "failed to register media device (%d)\n", r);
  goto fail_subdevs;
 }

 return 0;

fail_subdevs:
 imgu_v4l2_cleanup_pipes(imgu, IMGU_MAX_PIPE_NUM);
fail_v4l2_pipes:
 v4l2_device_unregister(&imgu->v4l2_dev);
fail_v4l2_dev:
 media_device_cleanup(&imgu->media_dev);

 return r;
}
