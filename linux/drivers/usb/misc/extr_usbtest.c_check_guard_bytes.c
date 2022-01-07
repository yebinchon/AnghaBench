
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct usbtest_dev {int dummy; } ;
struct urb {scalar_t__* transfer_buffer; } ;


 int EINVAL ;
 int ERROR (struct usbtest_dev*,char*,unsigned int,scalar_t__,scalar_t__) ;
 scalar_t__ GUARD_BYTE ;
 scalar_t__* buffer_offset (scalar_t__*) ;

__attribute__((used)) static int check_guard_bytes(struct usbtest_dev *tdev, struct urb *urb)
{
 u8 *buf = urb->transfer_buffer;
 u8 *guard = buf - buffer_offset(buf);
 unsigned i;

 for (i = 0; guard < buf; i++, guard++) {
  if (*guard != GUARD_BYTE) {
   ERROR(tdev, "guard byte[%d] %d (not %d)\n",
    i, *guard, GUARD_BYTE);
   return -EINVAL;
  }
 }
 return 0;
}
