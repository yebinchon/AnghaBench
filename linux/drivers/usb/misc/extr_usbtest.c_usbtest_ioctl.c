
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbtest_param_64 {int duration_usec; int duration_sec; int vary; int sglen; int length; int iterations; int test_num; } ;
struct usbtest_param_32 {int duration_usec; int duration_sec; int vary; int sglen; int length; int iterations; int test_num; } ;
struct usbtest_dev {int lock; TYPE_3__* info; } ;
struct usb_interface {int dev; TYPE_2__* altsetting; } ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {scalar_t__ alt; } ;
struct TYPE_4__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int ERESTARTSYS ;
 int NSEC_PER_USEC ;


 int dev_err (int *,char*,scalar_t__,int) ;
 int ktime_get_ts64 (struct timespec64*) ;
 int mod_pattern ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pattern ;
 int set_altsetting (struct usbtest_dev*,scalar_t__) ;
 struct timespec64 timespec64_sub (struct timespec64,struct timespec64) ;
 struct usbtest_dev* usb_get_intfdata (struct usb_interface*) ;
 int usbtest_do_ioctl (struct usb_interface*,struct usbtest_param_32*) ;

__attribute__((used)) static int
usbtest_ioctl(struct usb_interface *intf, unsigned int code, void *buf)
{

 struct usbtest_dev *dev = usb_get_intfdata(intf);
 struct usbtest_param_64 *param_64 = buf;
 struct usbtest_param_32 temp;
 struct usbtest_param_32 *param_32 = buf;
 struct timespec64 start;
 struct timespec64 end;
 struct timespec64 duration;
 int retval = -EOPNOTSUPP;



 pattern = mod_pattern;

 if (mutex_lock_interruptible(&dev->lock))
  return -ERESTARTSYS;







 if (dev->info->alt >= 0) {
  if (intf->altsetting->desc.bInterfaceNumber) {
   retval = -ENODEV;
   goto free_mutex;
  }
  retval = set_altsetting(dev, dev->info->alt);
  if (retval) {
   dev_err(&intf->dev,
     "set altsetting to %d failed, %d\n",
     dev->info->alt, retval);
   goto free_mutex;
  }
 }

 switch (code) {
 case 128:
  temp.test_num = param_64->test_num;
  temp.iterations = param_64->iterations;
  temp.length = param_64->length;
  temp.sglen = param_64->sglen;
  temp.vary = param_64->vary;
  param_32 = &temp;
  break;

 case 129:
  break;

 default:
  retval = -EOPNOTSUPP;
  goto free_mutex;
 }

 ktime_get_ts64(&start);

 retval = usbtest_do_ioctl(intf, param_32);
 if (retval < 0)
  goto free_mutex;

 ktime_get_ts64(&end);

 duration = timespec64_sub(end, start);

 temp.duration_sec = duration.tv_sec;
 temp.duration_usec = duration.tv_nsec/NSEC_PER_USEC;

 switch (code) {
 case 129:
  param_32->duration_sec = temp.duration_sec;
  param_32->duration_usec = temp.duration_usec;
  break;

 case 128:
  param_64->duration_sec = temp.duration_sec;
  param_64->duration_usec = temp.duration_usec;
  break;
 }

free_mutex:
 mutex_unlock(&dev->lock);
 return retval;
}
