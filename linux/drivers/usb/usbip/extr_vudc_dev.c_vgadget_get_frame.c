
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_sec; int tv_nsec; } ;
struct vudc {TYPE_1__ start_time; } ;
struct usb_gadget {int dummy; } ;
struct timespec64 {int tv_sec; int tv_nsec; } ;


 int NSEC_PER_MSEC ;
 int ktime_get_ts64 (struct timespec64*) ;
 struct vudc* usb_gadget_to_vudc (struct usb_gadget*) ;

__attribute__((used)) static int vgadget_get_frame(struct usb_gadget *_gadget)
{
 struct timespec64 now;
 struct vudc *udc = usb_gadget_to_vudc(_gadget);

 ktime_get_ts64(&now);
 return ((now.tv_sec - udc->start_time.tv_sec) * 1000 +
  (now.tv_nsec - udc->start_time.tv_nsec) / NSEC_PER_MSEC)
   & 0x7FF;
}
