
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lego_usb_tower {int interrupt_out_urb; scalar_t__ interrupt_out_busy; int interrupt_in_urb; scalar_t__ interrupt_in_running; } ;


 int mb () ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void tower_abort_transfers (struct lego_usb_tower *dev)
{
 if (dev == ((void*)0))
  return;


 if (dev->interrupt_in_running) {
  dev->interrupt_in_running = 0;
  mb();
  usb_kill_urb(dev->interrupt_in_urb);
 }
 if (dev->interrupt_out_busy)
  usb_kill_urb(dev->interrupt_out_urb);
}
