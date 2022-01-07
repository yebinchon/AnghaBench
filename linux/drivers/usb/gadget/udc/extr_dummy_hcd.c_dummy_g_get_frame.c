
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct timespec64 {int tv_nsec; } ;


 int NSEC_PER_MSEC ;
 int ktime_get_ts64 (struct timespec64*) ;

__attribute__((used)) static int dummy_g_get_frame(struct usb_gadget *_gadget)
{
 struct timespec64 ts64;

 ktime_get_ts64(&ts64);
 return ts64.tv_nsec / NSEC_PER_MSEC;
}
