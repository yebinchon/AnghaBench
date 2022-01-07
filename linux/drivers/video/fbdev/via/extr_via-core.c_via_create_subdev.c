
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct viafb_subdev_info {TYPE_3__* platdev; int name; } ;
struct viafb_dev {TYPE_2__* pdev; } ;
struct TYPE_6__ {struct viafb_dev* platform_data; int * parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;
struct TYPE_7__ {int dev; } ;


 int ENOMEM ;
 int dev_err (int *,char*,int ) ;
 int platform_device_add (TYPE_3__*) ;
 TYPE_3__* platform_device_alloc (int ,int) ;
 int platform_device_put (TYPE_3__*) ;

__attribute__((used)) static int via_create_subdev(struct viafb_dev *vdev,
        struct viafb_subdev_info *info)
{
 int ret;

 info->platdev = platform_device_alloc(info->name, -1);
 if (!info->platdev) {
  dev_err(&vdev->pdev->dev, "Unable to allocate pdev %s\n",
   info->name);
  return -ENOMEM;
 }
 info->platdev->dev.parent = &vdev->pdev->dev;
 info->platdev->dev.platform_data = vdev;
 ret = platform_device_add(info->platdev);
 if (ret) {
  dev_err(&vdev->pdev->dev, "Unable to add pdev %s\n",
    info->name);
  platform_device_put(info->platdev);
  info->platdev = ((void*)0);
 }
 return ret;
}
