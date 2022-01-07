
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_device {int minor; int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int UIO_MAX_DEVICES ;
 int dev_err (int *,char*) ;
 int idr_alloc (int *,struct uio_device*,int ,int ,int ) ;
 int minor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uio_idr ;

__attribute__((used)) static int uio_get_minor(struct uio_device *idev)
{
 int retval = -ENOMEM;

 mutex_lock(&minor_lock);
 retval = idr_alloc(&uio_idr, idev, 0, UIO_MAX_DEVICES, GFP_KERNEL);
 if (retval >= 0) {
  idev->minor = retval;
  retval = 0;
 } else if (retval == -ENOSPC) {
  dev_err(&idev->dev, "too many uio devices\n");
  retval = -EINVAL;
 }
 mutex_unlock(&minor_lock);
 return retval;
}
