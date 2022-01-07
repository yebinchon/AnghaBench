
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtest_dev {int dummy; } ;


 int unlink1 (struct usbtest_dev*,int,int,int) ;

__attribute__((used)) static int unlink_simple(struct usbtest_dev *dev, int pipe, int len)
{
 int retval = 0;


 retval = unlink1(dev, pipe, len, 1);
 if (!retval)
  retval = unlink1(dev, pipe, len, 0);
 return retval;
}
