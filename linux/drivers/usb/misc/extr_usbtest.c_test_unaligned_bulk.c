
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtest_dev {int dummy; } ;
struct urb {int dummy; } ;


 int ENOMEM ;
 int simple_callback ;
 int simple_free_urb (struct urb*) ;
 int simple_io (struct usbtest_dev*,struct urb*,int,int ,int ,char const*) ;
 int testdev_to_usbdev (struct usbtest_dev*) ;
 struct urb* usbtest_alloc_urb (int ,int,unsigned int,unsigned int,int,int ,int ) ;

__attribute__((used)) static int test_unaligned_bulk(
 struct usbtest_dev *tdev,
 int pipe,
 unsigned length,
 int iterations,
 unsigned transfer_flags,
 const char *label)
{
 int retval;
 struct urb *urb = usbtest_alloc_urb(testdev_to_usbdev(tdev),
   pipe, length, transfer_flags, 1, 0, simple_callback);

 if (!urb)
  return -ENOMEM;

 retval = simple_io(tdev, urb, iterations, 0, 0, label);
 simple_free_urb(urb);
 return retval;
}
