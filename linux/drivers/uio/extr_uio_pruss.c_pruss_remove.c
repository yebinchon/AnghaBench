
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_pruss_dev {int dummy; } ;
struct platform_device {int dev; } ;


 struct uio_pruss_dev* platform_get_drvdata (struct platform_device*) ;
 int pruss_cleanup (int *,struct uio_pruss_dev*) ;

__attribute__((used)) static int pruss_remove(struct platform_device *dev)
{
 struct uio_pruss_dev *gdev = platform_get_drvdata(dev);

 pruss_cleanup(&dev->dev, gdev);
 return 0;
}
