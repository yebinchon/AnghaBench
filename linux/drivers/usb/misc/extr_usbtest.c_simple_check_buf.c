
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct usbtest_dev {int dummy; } ;
struct urb {unsigned int actual_length; int pipe; int dev; scalar_t__* transfer_buffer; } ;


 int EINVAL ;
 int ERROR (struct usbtest_dev*,char*,unsigned int,scalar_t__,scalar_t__) ;
 int check_guard_bytes (struct usbtest_dev*,struct urb*) ;
 unsigned int get_maxpacket (int ,int ) ;
 int pattern ;

__attribute__((used)) static int simple_check_buf(struct usbtest_dev *tdev, struct urb *urb)
{
 unsigned i;
 u8 expected;
 u8 *buf = urb->transfer_buffer;
 unsigned len = urb->actual_length;
 unsigned maxpacket = get_maxpacket(urb->dev, urb->pipe);

 int ret = check_guard_bytes(tdev, urb);
 if (ret)
  return ret;

 for (i = 0; i < len; i++, buf++) {
  switch (pattern) {

  case 0:
   expected = 0;
   break;





  case 1:
   expected = (i % maxpacket) % 63;
   break;

  default:
   expected = !*buf;
   break;
  }
  if (*buf == expected)
   continue;
  ERROR(tdev, "buf[%d] = %d (not %d)\n", i, *buf, expected);
  return -EINVAL;
 }
 return 0;
}
