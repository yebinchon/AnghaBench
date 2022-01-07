
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pi433_device {int minor; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int N_PI433_MINORS ;
 int dev_err (int *,char*) ;
 int idr_alloc (int *,struct pi433_device*,int ,int ,int ) ;
 int minor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pi433_idr ;

__attribute__((used)) static int pi433_get_minor(struct pi433_device *device)
{
 int retval = -ENOMEM;

 mutex_lock(&minor_lock);
 retval = idr_alloc(&pi433_idr, device, 0, N_PI433_MINORS, GFP_KERNEL);
 if (retval >= 0) {
  device->minor = retval;
  retval = 0;
 } else if (retval == -ENOSPC) {
  dev_err(&device->spi->dev, "too many pi433 devices\n");
  retval = -EINVAL;
 }
 mutex_unlock(&minor_lock);
 return retval;
}
