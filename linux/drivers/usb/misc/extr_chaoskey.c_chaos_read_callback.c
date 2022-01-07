
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; scalar_t__ actual_length; struct chaoskey* context; } ;
struct chaoskey {int reading; int wait_q; scalar_t__ used; scalar_t__ valid; int interface; } ;


 int smp_wmb () ;
 int usb_dbg (int ,char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void chaos_read_callback(struct urb *urb)
{
 struct chaoskey *dev = urb->context;
 int status = urb->status;

 usb_dbg(dev->interface, "callback status (%d)", status);

 if (status == 0)
  dev->valid = urb->actual_length;
 else
  dev->valid = 0;

 dev->used = 0;


 smp_wmb();

 dev->reading = 0;
 wake_up(&dev->wait_q);
}
